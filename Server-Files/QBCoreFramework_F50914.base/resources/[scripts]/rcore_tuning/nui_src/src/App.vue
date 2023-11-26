<template>
    <div id="app" :class="{'app-closed': !isShown, 'app-visible': isShown}" @mouseover="onMouseOver()" @mouseleave="onMouseLeave()">
        <Tuning ref='tuning' />
        <ConfirmSelection @cancelSelection='cancelSelection' />
        <DragHint :should-hint-be-visible='!hasPanned' />
    </div>
</template>

<script>
    import {apiClose, mousePan, startMousePan} from './api.js';
    import * as $ from "jquery";
    import Tuning from './components/Tuning';
    import ConfirmSelection from './components/ConfirmSelection';
    import DragHint from './components/DragHint';

    export default {
        name: 'App',
        components: {
            Tuning,
            ConfirmSelection,
            DragHint,
        },
        computed: {
            isShown() {
                return this.$store.state.isShown;
            },
        },
        data() {
            return {
                isMouseOverContainer: false,
                isMouseDown: false,
                lastX: null,
                lastY: null,
                lastMouseUpdateAt: null,
                hasPanned: false,
            };
        },
        mounted() {
            window.addEventListener("message", this.onEvent);
            document.onmousemove = this.onMouseMove;
            document.onmousedown = this.onMouseDown;
            document.onmouseup = this.onMouseUp;

            // this.show(null, null);

            $(window).on("keyup", function(e) {
                if (e.which == 113 || e.which == 27) {
                    e.preventDefault();
                    apiClose();
                }
            });
        },
        beforeDestroy() {
            window.removeEventListener("message", this.onEvent);
            document.onmousemove = null;
            document.onmousedown = null;
            document.onmouseup = null;
        },
        methods: {
            cancelSelection() {
                this.$store.commit('unsetPreview');
            },
            onMouseOver() {
                this.isMouseOverContainer = true;
            },
            onMouseLeave() {
                this.isMouseOverContainer = false;
            },
            onMouseMove(event) {
                const xPos = event.clientX;
                const yPos = event.clientY;

                if(this.isMouseDown) {
                    let nowTime = (new Date()).getTime();

                    if(!this.lastX) {
                        this.lastMouseUpdateAt = nowTime;
                        this.lastX = xPos;
                        this.lastY = yPos;
                    } else if((nowTime - this.lastMouseUpdateAt) > 10) {
                        let xChange = xPos - this.lastX;
                        let yChange = yPos - this.lastY;

                        this.lastMouseUpdateAt = nowTime;
                        this.lastX = xPos;
                        this.lastY = yPos;
                        this.hasPanned = true;
                        mousePan(xChange / window.innerWidth, yChange / window.innerHeight);
                    }
                }
            },
            onMouseDown(event) { 
                if(event.button === 0 && !this.isMouseOverContainer) {
                    this.isMouseDown = true;
                    this.lastX = null;
                    this.lastY = null;
                    this.lastMouseUpdateAt = null;
                    startMousePan();
                }
            },
            onMouseUp(event) {
                if(event.button === 0) {
                    this.isMouseDown = false;
                    this.lastX = null;
                    this.lastY = null;
                    this.lastMouseUpdateAt = null;
                }
            },

            onEvent(event) {
                if (event.data.type == "showui") {
                    this.show(event.data.options, event.data.installed, event.data.ordered, event.data.upgrades, event.data.totalCost);
                    this.$store.commit('setTranslations', event.data.translations);
                } else if (event.data.type == "hideui") {
                    this.hide();
                } else if (event.data.type == 'setOrderedTuning') {
                    this.$store.commit('setOrderedUpgrades', event.data.orderedTuning);
                    this.$store.commit('setTotalPrice', event.data.totalCost);
                }
            },
            show(options, installed, ordered, upgrades, total) {
                this.$store.commit('resetPreview');
                this.$refs.tuning.unsetAllLevels();

                if(options) {
                    this.$store.commit('setTuningOptions', options)
                }
                if(installed) {
                    this.$store.commit('setInstalledUpgrades', installed)
                }

                if(ordered) {
                    this.$store.commit('setOrderedUpgrades', ordered);
                }

                if (upgrades) {
                    this.$store.commit('setPurchasedShopUpgrades', upgrades);
                }

                if(total) {
                    this.$store.commit('setTotalPrice', total);
                }

                this.$store.commit('showTuning');
                // document.body.style.display = "block";
            },
            hide() {
                this.$store.commit('hideTuning');
                // document.body.style.display = "none";
            },
        }
    }
</script>

<style>
    @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300&display=swap');
    @import url('https://fonts.googleapis.com/css2?family=Source+Code+Pro&display=swap');
    
    @font-face {
        font-family: tuningTitleFont;
        src: url('../public/LeChantDesAlbatros.ttf');
    }

    :root {

    }

    body {
        background: url('../public/bg.jpg');
        color: #fff;
        margin: 0;
        overflow: hidden;
    }

    #app {
        user-select: none;
        font-family: 'Poppins', sans-serif;
        -webkit-font-smoothing: antialiased;
        -moz-osx-font-smoothing: grayscale;
    }

    .app-closed {
        opacity: 0;
    }

    .app-visible {
        opacity: 1;
    }
</style>

<template>
    <div class="drag-container">
        <div :class="{'mouse-thing': true, 'opacity-animate': true, 'hidden': true, 'shown': shouldHintBeVisible && isShown}" ref='mouse'>
            <img v-if='!isMoving' src='../../public/cursor.png' />
            <img v-if='isMoving' src='../../public/cursor_active.png' />
        </div>
        <div  :class="{'text-hint': true, 'opacity-animate': true, 'hidden': true, 'shown': shouldHintBeVisible && isShown}" v-html="translations.NUI_CLICK_AND_DRAG"></div>
    </div>
</template>

<script>
export default {
    props: ['shouldHintBeVisible'],
    data() {
        return {
            stepsLeft: 135,
            curLeft: 275,
            curTop: 0,
            downStep: 3,
            isShown: false,
            isMoving: false,
        }
    },
    mounted: function() {
        this.showHint();
    },
    computed: {
        translations() {
            return this.$store.state.translations;
        },
    },
    methods: {
        showHint() {
            if(!this.shouldHintBeVisible) {
                return;
            }
            
            setTimeout(() => {
                this.stepsLeft = 135;
                this.curLeft = 275;
                this.curTop = 0;
                this.downStep = 3;
                this.$refs.mouse.style.transform = `translateX(${this.curLeft}px) translateY(${this.curTop}px)`
                this.isShown = true;

                setTimeout(() => {
                    this.isMoving = true;
                    setTimeout(() => {
                        this.onUpdate();
                    }, 500);
                }, 500);
            }, 1000);
        },
        hideHint() {
                this.isShown = false;
        },
        onUpdate() {

            this.stepsLeft = this.stepsLeft - 1;

            if(this.stepsLeft > 0) {
                this.curLeft -= 2;
                this.curTop += this.downStep;
                this.downStep -= 0.03;
                // this.$refs.mouse.style.left = `${this.curLeft}px`
                // this.$refs.mouse.style.top = `${this.curTop}px`

                this.$refs.mouse.style.transform = `translateX(${this.curLeft}px) translateY(${this.curTop}px)`
                setTimeout(this.onUpdate, 10);
            } else {
                this.isMoving = false;
                setTimeout(() => {
                    this.hideHint();
                    
                    setTimeout(() => {
                        this.showHint();
                    }, 1000);
                }, 1000);
            }
        }
    }
}
</script>

<style>
    .hidden {
        opacity: 0;
    }
    .shown {
        opacity: 1 !important;
    }

    .opacity-animate {
        transition: opacity 1000ms ease;
    }

    .drag-container {
        pointer-events: none;

        position: absolute;
        top: 50%;
        transform: translateY(-50%) translateX(-50%);
        left: 50%;
        width: 300px;
        height: 200px;
    }

    .mouse-thing {
        position: relative;
        width: 25px;
        height: 25px;
        /* transition: 150ms; */
    }


    .text-hint {
        position: relative;
        top: 160px;
        width: 100%;
        background: rgba(17, 17, 17, 0.95);
        text-align: center;
        padding: 10px 0
    }

    .accent {
        color: #eec64e;
        font-weight: bold;
    }
</style>
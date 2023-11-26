<template>
    <div class='icon-container'>
        <img v-if='!iconColor' :src="iconPath" alt='' @load="onImgLoad"/>
        <span v-if='!iconLoaded && !iconColor' class='icon-text'>{{ formatIconText }}</span>
        <div v-if='iconColor' :class='{"icon-color": true, [iconColor]: true}'></div>
    </div>
</template>

<script>
export default {
    props: ['iconPath', 'name', 'iconColor'],
    data() {
        return {
            iconLoaded: false
        }
    },
    computed: {
        formatIconText() {
            const split = this.name.split(' ');

            if(split.length >= 2) {
                return split[0][0] + split[1][0].toUpperCase()
            }

            return this.name[0] + this.name[1];
        }
    },
    methods: {
        onImgLoad () {
            this.iconLoaded = true
        }
    }
}
</script>

<style scoped>
    .icon-container {
        display: flex;
    }

    .icon-text {
        font-size: 14px;
        color: rgba(255, 255, 255, 0.582);
        position: relative;
    }

    .icon-color {
        width: 15px;
        height: 15px;
    }

    .icon-color.black {
        background: #000;
    }
    .icon-color.white {
        background: #fff;
    }
    .icon-color.grey {
        background: #cfcfc4;
    }
    .icon-color.red {
        background: #ff6961;
    }
    .icon-color.pink {
        background: #F8C8DC;
    }
    .icon-color.blue {
        background: #A7C7E7;
    }
    .icon-color.yellow {
        background: #fdfd96;
    }
    .icon-color.green {
        background: #77dd77;
    }
    .icon-color.orange {
        background: #ffb347;
    }
    .icon-color.brown {
        background: #B1907F;
    }
    .icon-color.purple {
        background: #b19cd9;
    }
    .icon-color.chrome {
        background: #DBE2E9;
    }
    .icon-color.gold {
        background: #E7D27C;
    }
</style>
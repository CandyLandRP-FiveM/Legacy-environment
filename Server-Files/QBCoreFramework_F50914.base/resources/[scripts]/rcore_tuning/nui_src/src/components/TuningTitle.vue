<template>
    <div class="tuning-header">
        <div class="tuning-header-1">{{ translations.NUI_TITLE }}</div>
        <div class="tuning-header-2">{{ translations.NUI_TITLE }}</div>
        <div class="tuning-header-3">{{ translations.NUI_TITLE }}</div>
    </div>
</template>

<script>
export default {
    computed: {
        translations() {
            return this.$store.state.translations;
        },
    }
}
</script>

<style scoped>
    .tuning-header {
        font-size: 50px;
        font-family: tuningTitleFont;
        font-weight: 400;
        transform: rotate(-3deg);
        letter-spacing: 0.07em;
        position: relative;
        top: -32px;
        left: -20px;
    }

    .tuning-header div {
        position: absolute;
        top: 0;
        left: 0;
    }

    .tuning-header-1 {
        -webkit-text-stroke: 13px #000;
        -webkit-text-fill-color: white;
    }
    
    .tuning-header-2 {
        -webkit-text-stroke: 7px #A75151;
        -webkit-text-fill-color: white;
    }

    .tuning-header-3 {
        background: radial-gradient(59.03% 59.03% at 50% 40.97%, #FFFFFF 0%, #B6B6B6 100%);
        -webkit-background-clip: text;
        -webkit-text-fill-color: transparent;
        background-clip: text;
        text-fill-color: transparent;
    }
</style>
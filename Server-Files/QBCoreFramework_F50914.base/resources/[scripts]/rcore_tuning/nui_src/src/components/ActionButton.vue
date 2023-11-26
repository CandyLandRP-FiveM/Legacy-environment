<template>
    <div class="action-buttons">
        <div class="button" @click="changeCamera">
            {{ translations.NUI_CHANGE_CAMERA }}
        </div>
        <div class="button" @mousedown="hornDown" @mouseup="hornUp">
            {{ translations.NUI_PLAY_HORN }}
        </div>
        <div class="button" @click="changeLights">
            {{ translations.NUI_LIGHTS }}
        </div>
    </div>
</template>

<script>

import {apiChangeCamera, apiSoundHorn, apiStopHorn, apiClickLights} from '../api';

export default {
    computed: {
        translations() {
            return this.$store.state.translations;
        },
    },
    methods: {
        changeCamera: function() {
            apiChangeCamera();
        },
        hornDown: function() {
            apiSoundHorn();
        },
        hornUp: function() {
            apiStopHorn();
        },
        changeLights: function() {
            apiClickLights();
        }
    }
}
</script>

<style scoped>
    .action-buttons {
        display: flex;
        gap: 10px;
        justify-content: center;
        padding-top: 10px;
    }

    .action-buttons .button {
        background: black;
        border-radius: 5px;
        display: flex;
        justify-content: center;
        align-items: center;
        padding: 5px 10px;
        border: 1px solid rgb(179, 179, 179);
    }

    .action-buttons .button:hover {
        background: rgb(41, 41, 41);
        cursor: pointer;
    }
    .action-buttons .button:active {
        background: rgb(59, 59, 59);
        cursor: pointer;
    }

</style>
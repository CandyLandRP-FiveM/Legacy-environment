<template>
    <div :class="{'confirm-selection': true, 'show': previewModName}">
        <button v-if='previewModName' class="confirm" @click='confirm'>{{ translations.NUI_CONFIRM_SELECTION }}</button>
        <button v-if='previewModName' class="cancel" @click='cancel'>{{ translations.NUI_CANCEL }}</button>
    </div>
</template>

<script>
import {apiConfirmSelection} from '../api.js';

export default {
    computed: {
        previewModName: function() {
            return this.$store.state.previewModName;
        },
        previewModType: function() {
            return this.$store.state.previewModType;
        },
        previewModTypeIndex: function() {
            return this.$store.state.previewModTypeIndex;
        },
        translations() {
            return this.$store.state.translations;
        },
    },
    methods: {
        confirm() {
            this.$store.commit('resetPreview');
            apiConfirmSelection();
        },
        cancel() {
            this.$emit('cancelSelection');
        },
    }
}
</script>

<style scoped>
    .confirm-selection {
        position: absolute;
        top: 50%;
        transform: translateY(-50%);
        left: 450px;
        display: flex;
        flex-direction: column;
        background: rgba(17, 17, 17, 0.95);
        padding: 10px 10px 10px 0;
        opacity: 0;
        border-top-right-radius: 5px;
        border-bottom-right-radius: 5px;
    }

    .confirm-selection.show {
        opacity: 1;
        transition-duration: 0.4s;
    }

    button {
        padding: 15px 10px;
        background: red;
        display: flex;
        border: 0;
        -webkit-transition-duration: 0.2s; /* Safari */
        transition-duration: 0.2s;
        border-radius: 5px;
        justify-content: center;
    }

    .show button {
        cursor: pointer;
    }

    button.confirm {
        background: rgba(89, 208, 115, 0.8);
        color: white;
        border-bottom: 0;
        border-bottom-left-radius: 0;
        border-bottom-right-radius: 0;
    }
    
    button.confirm:hover {
        background: rgba(89, 208, 115, 1.0);
    }

    button.cancel {
        background: rgba(208, 89, 89, 0.8);
        color: white;
        border-top: 1px solid rgba(17, 17, 17, 0.95);
        border-top-left-radius: 0;
        border-top-right-radius: 0;
    }
    
    button.cancel:hover {
        background: rgba(208, 89, 89, 1.0);
    }
</style>
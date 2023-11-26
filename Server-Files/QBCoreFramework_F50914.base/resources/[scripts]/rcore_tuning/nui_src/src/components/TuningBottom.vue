<template>
    <div class='tuning-bottom'>
        <div class="total-price">
            <span class='total'>{{ translations.NUI_TOTAL }}:</span>
            <span class="total-price-text">{{ totalCost }}</span>
        </div>
        <div class="bottom-buttons">
            <button class="close" @click='close'>
                {{ translations.NUI_CLOSE }}
            </button>
            <button class="order" @click='order'>
                {{ translations.NUI_ORDER }}
            </button>
        </div>
    </div>
</template>

<script>
import {apiClose, apiOrder} from '../api.js';

export default {
    computed: {
        totalCost: function() {
            return this.$store.state.totalPrice;
        },
        translations() {
            return this.$store.state.translations;
        },
    },
    methods: {
        close() {
            apiClose();
        },
        order() {
            apiOrder();
        },
    }
}
</script>

<style scoped>
    .tuning-bottom {
        background-color: #272727;
        margin: 0 10px 10px 10px;
        border-radius: 5px;
        padding: 5px;
        display: flex;
        justify-content: space-between;
        align-items: center;
    }

    .total {
        color: rgb(175, 175, 175);
        font-weight: bold;
        padding-right: 5px;
    }

    .total-price {
        font-size: 14px;
        margin-left: 20px;
    }

    .bottom-buttons {
        margin-right: 20px;
    }

    button {
        border-radius: 3px;
        padding: 3px 14px;
        border: 0;  
        -webkit-transition-duration: 0.2s; /* Safari */
        transition-duration: 0.2s;
    }

    button.close {
        background: rgba(208, 89, 89, 0.8);
        color: white;
    }

    button.order {
        background: rgba(89, 208, 115, 0.8);
        color: white;
        margin-left: 10px;
    }
    button.close:hover {
        background: rgba(208, 89, 89, 1.0);
        cursor: pointer;
    }

    button.order:hover {
        background: rgba(89, 208, 115, 1.0);
        cursor: pointer;
    }

</style>
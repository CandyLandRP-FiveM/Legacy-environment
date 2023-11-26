<template>
    <div class="category-list-option-item" :class='{"unlocked": isUnlocked}' @click='select'>
        <div class="option-item-checkbox">
            <div v-if='!isInstalled && isUnlocked' :class='{"checkbox": true, "active": isActive, "ordered": isOrdered}'></div>
            <div v-if='isInstalled' class='is-installed'><img src='../../public/upgrade_installed.png' /></div>
            <ItemIcon v-if='!isUnlocked' :icon-path="`${publicPath}lock.png`" :name='label' />
        </div>
        <div class="option-item-name">
            {{ label }}
        </div>
        <div class="option-item-price">
            <span class="monospace-price">{{ price }}</span>
        </div>
    </div>
</template>

<script>
export default {
    props: ['label', 'price', 'isActive', 'isInstalled', 'isOrdered', 'isUnlocked'],
    methods: {
        select() {
            if (this.isUnlocked) {
                this.$emit('select');
            }
        }
    }
}
</script>

<style scoped>
    .is-installed {
        width: 14px;
    }

    .is-installed img {
        width: 25px;
        position: relative;
        left: -5px;
        top: 3px;
    }

    .unlocked {
        cursor: pointer;
    }

    .category-list-option-item {
        position: relative;
        display: flex;
        background: #272727;
        border-radius: 5px;
        padding: 3px 0;
        -webkit-transition-duration: 0.2s; /* Safari */
        transition-duration: 0.2s;
    }

    .category-list-option-item:hover {
        background: #464646;
    }

    .option-item-name {
        font-size: 14px;
        display: flex;
        align-items: center;
        flex-grow: 1;
        padding-right: 10px;
    }

    .option-item-checkbox {
        display: flex;
        justify-content: center;
        align-items: center;
        padding: 0 10px;
    }

    .option-item-checkbox .checkbox {
        background: #515151;
        width: 14px;
        height: 14px;
        border-radius: 2px;
    }

    .option-item-checkbox .checkbox.active {
        background: #12B20F;
        box-shadow: 0 0 3px 0px #12B20F;
    }

    .option-item-checkbox .checkbox.ordered {
        background: #D05959;
        box-shadow: 0 0 3px 0px #D05959;
    }

    .option-item-price {
        padding-right: 10px;
    }

    .option-item-price span {
        background: #151515;
        font-size: 12px;
        padding: 2px 4px;
        color: #08E704;
        border-radius: 5px;
        white-space: nowrap;
    }

    .monospace-price {
        font-family: 'Source Code Pro', monospace;
    }
</style>
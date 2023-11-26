<template>
    <div :class='{"category-list-item": true, "active": active, "unlocked": isUnlocked}' @click='select()'>
        <div class="category-item-left" @mouseenter='onEnter' @mouseleave='onLeave'>
            <ItemIcon v-if="isUnlocked" :icon-path="`${publicPath}icon/${icon}`" :name='label' :icon-color='iconColor' />
            <ItemIcon v-else :icon-path="`${publicPath}lock.png`" :name='label' />
        </div>
        <div class="category-item-right" v-if='!small'>
            <div>{{ label }}</div>
        </div>
    </div>
</template>

<script>
import ItemIcon from './ItemIcon';

export default {
    props: ['label', 'icon', 'small', 'active', 'iconColor', 'isUnlocked'],
    components: {
        ItemIcon,
    },
    data() {
        
        return {
            publicPath: process.env.BASE_URL
        };
    },
    methods: {
        select: function() {
            if (this.isUnlocked) {
                this.$emit("click")
            }
        },
        onEnter: function() {
            if (this.isUnlocked) {
                this.$emit('enter');
            }
        },
        onLeave: function() {
            if (this.isUnlocked) {
                this.$emit('leave');
            }
        },
    }
}
</script>

<style scoped>
    .unlocked {
        cursor: pointer;
    }

    .category-list-item {
        display: flex;
        background: #272727;
        border-radius: 5px;
        padding: 6px 0;
        min-width: 34px;
        -webkit-transition-duration: 0.2s; /* Safari */
        transition-duration: 0.2s;
    }

    .unlocked:hover {
        background: #464646;
    }

    .unlocked.active {
        background: #464646;
    }

    .category-item-left {
        height: 20px;
        width: 26px;
        padding-left: 8px;
        display: flex;
        align-items: center;
    }
    .category-item-right {
        height: 20px;
        display: flex;
        align-items: center;
        padding-left: 5px;
        padding-right: 10px;
    }

    .category-item-right > div {
        position: relative;
        top: 1px;
    }
</style>
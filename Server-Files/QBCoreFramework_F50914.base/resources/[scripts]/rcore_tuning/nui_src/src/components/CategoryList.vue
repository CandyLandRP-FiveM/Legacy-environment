<template>
    <div :class='{"category-list": true, "flex-grow": grow}'>
        <slot></slot>
    </div>
</template>

<script>
export default {
    props: ['grow'],
    methods: {
    }
}
</script>

<style scoped>
    .category-list {
        height: calc(100% - 60px);
        margin-top: 50px;
        display: flex;
        flex-direction: column;
        gap: 10px;
        overflow-y: auto;
        overflow-x: hidden;
    }

    .flex-grow {
        flex-grow: 1;
    }

    /* Firefox */
    * {
        scrollbar-width: auto;
        scrollbar-color: #d05959 #2e2e2e;
    }

    /* Chrome, Edge, and Safari */
    *::-webkit-scrollbar {
        width: 8px;
    }

    *::-webkit-scrollbar-track {
        background: #2e2e2e;
        border-left: 4px transparent solid;
        background-clip: padding-box;
    }

    *::-webkit-scrollbar-thumb {
        background-color: #d05959;
        width: 4px;
        border-radius: 10px;
        border-left: 4px transparent solid;
        background-clip: padding-box;
        background-clip: padding-box;
    }
</style>
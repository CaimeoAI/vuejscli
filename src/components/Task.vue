<template>
    <div class="task">
        <h3>{{task.text}}</h3>
        <p>{{task.day}}</p>

    </div>
</template>

<script>
    export default {
        name: 'TaskComp',
        props: {
            task: Object
        }
    }
</script>

<style scoped>
    .task {
        margin-top: 1rem;
        padding: 0.5rem;
        width :100%;
        background-color: #f4f4f4;
        border-radius: 4px;
    }
</style>
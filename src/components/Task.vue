<template>
    <div :class="[task.reminder ? 'reminder' : '', 'task']">
        <h3>
            {{task.text}}
            <i class="fas fa-times"></i>
        </h3>
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
        cursor: pointer;
    } 

    .task.reminder {
        border-left: 5px solid green;
    }
    h3 {
        display: flex;
        align-items: center;
        justify-content: space-between;
    }

    i {
        color: red;
    }
</style>
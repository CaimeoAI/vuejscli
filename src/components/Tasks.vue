<template>
    <div :key="task.id" v-for="task in tasks">
        <TaskComp @delete-task="$emit('delete-task', task.id)" :task='task'/>
    </div>
</template>

<script>

import TaskComp from "./Task";

export default {
    name: 'TasksComp',
    components: {
        TaskComp
    },
    props: {
        tasks: Array,
    },
    emits: ['delete-task']
}
</script>

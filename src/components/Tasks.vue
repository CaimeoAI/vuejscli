<template>
    <div :key="task.id" v-for="task in tasks">
        <TaskComp :task='task'/>
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
}
</script>

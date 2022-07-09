<template>
    <div :key="task.id" v-for="task in tasks">
        <h2>{{task.text}}</h2>
    </div>
</template>

<script>

export default {
    name: 'TasksComp',
    props: {
        tasks: Array,
    },
}
</script>

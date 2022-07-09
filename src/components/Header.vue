<template>
    <header>
        <h1>Task Tracker</h1>
        <ButtonComp @click="addTask()" text='Add Task' color='steelblue'/>
        <ButtonComp @click="editTask()" text='Edit Task' color='green'/>
    </header>
</template>

<script>

    import ButtonComp from './Button'

    export default {
        name: 'HeaderComp',
        components: {
            ButtonComp
        },
        methods: {
            addTask() {
                console.log('add task');
            },
            editTask() {
                console.log('edit task');
            },
            deleteTask() {
                console.log('delete task');
            },

        }
    }
</script>

<style scoped>
    header {
        display: flex;
        justify-content: space-between;
        align-items: center;
        margin-bottom: 20px;
    }
</style>
<template>
    <header>
        <h1>Task Tracker</h1>
        <ButtonComp text='Add Task' color='steelblue'/>
        <ButtonComp text='Edit Task' color='green'/>
        <ButtonComp text='Delete Task' color='red'/>
    </header>
</template>

<script>

    import ButtonComp from './Button'

    export default {
        name: 'HeaderComp',
        components: {
            ButtonComp
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
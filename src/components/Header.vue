<template>
    <header>
        <h1>Task Tracker</h1>
        <ButtonComp @toggle-add-task="$emit('toggle-add-task')" :text="showAddTask ? 'Close' : 'Add Task'" :color="showAddTask ? 'red' : 'steelblue'"/>
    </header>
</template>

<script>

    import ButtonComp from './Button'

    export default {
        name: 'HeaderComp',
        props: {
            showAddTask: Boolean,
        },
        components: {
            ButtonComp
        },
        methods: {
            addClick() {
                this.$emit('toggle-add-task', true)
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
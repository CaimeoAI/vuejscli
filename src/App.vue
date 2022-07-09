<template>
  <div class="container">
    <HeaderComp @toggle-add-task="toggleAddTask" :showAddTask="showAddTask"/>
    <div v-show="showAddTask">
      <AddTask @add-task="addTask"/>
    </div>
    <TasksComp @toggle-reminder="toggleReminder" @delete-task="deleteTask" :tasks="tasks"/>
  </div>
</template>

<script>

import HeaderComp from './components/Header'
import TasksComp from './components/Tasks'
import AddTask from './components/AddTask'

export default {

  name: 'App',

  components: {
    HeaderComp,
    TasksComp,
    AddTask
  },

  data() {
    return {
      tasks: [],
      showAddTask: false
    }
  },

  methods: {
    deleteTask(id) {
      if (confirm('Are you sure you want to delete this task?')) {
              this.tasks = this.tasks.filter(task => task.id !== id)
      }
    },

    toggleReminder(id) {
      console.log(id);
      this.tasks = this.tasks.map(task => task.id === id ? {...task, reminder: !task.reminder} : task)
    },

    addTask(newTask) {
      this.tasks.push(newTask)
    },

    toggleAddTask() {
      this.showAddTask = !this.showAddTask
    }
  },

  created() {
    this.tasks = [

      {
        id: 1,
        text: 'Walking the dog',
        day: 'March 1st at 12:00pm',
        reminder: true,
      },

      {
        id: 2,
        text: 'Meeting with the Board',
        day: 'March 3rd at 3:00pm',
        reminder: true,
      },

      {
        id: 3,
        text: 'Buying Groceries',
        day : 'April 3rd at 3:00pm',
        reminder: false,
      }
    ]
  }

}
</script>

<style>
* {
  box-sizing: border-box;
  margin: 0;
  padding: 0;
  scroll-behavior: smooth;
}

body {
  font-family: Arial, Helvetica, sans-serif;
}

.container {
  max-width: 500px;
  margin: 30px auto;
  overflow: auto;
  min-height: 300px;
  border: 1px solid steelblue;
  padding: 30px;
  border-radius: 5px;

}

.btn {
  display: inline-block;
  background: #000;
  color: #fff;
  border: none;
  padding: 10px 20px;
  margin: 5px;
  border-radius: 5px;
  cursor: pointer;
  text-decoration: none;
  font-size: 15px;
  font-family: Arial, Helvetica, sans-serif;
  font-weight: bold;
}

</style>



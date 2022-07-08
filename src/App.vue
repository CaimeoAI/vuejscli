<template>
  <div class="container">
    <HeaderComp/>
  </div>
</template>

<script>

import HeaderComp from './components/Header'


export default {
  name: 'App',
  components: {
    HeaderComp
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



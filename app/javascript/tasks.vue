<template>
  <div class="content"> 
    <h1>TASK</h1>
    <div class="task_group">
      <div class="task_list">
        <div class="task" v-for="task in tasks" :key="task.id">
          {{task.name}}
        </div>
      </div>
      <div class="task_content"></div>
    </div>
  </div>
</template>

<script>
export default {
  props: ["tasks"]
}
</script>

<style scoped>
</style>
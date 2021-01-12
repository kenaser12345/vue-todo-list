<template>
  <div class="content"> 
    <span class="title">TASK</span>
    <div class="task_group">
      <div class="task_list list_group">
        <a href="#" class="list-group-item list-group-item-action" v-for="task in tasks" :key="task.id" v-on:click.prevent="get_task_info(task.id)">
          {{task.name}}
        </a>
      </div>
      <div class="task_content">
        <div class="task_name">{{task_info.name}}</div>
        <p>{{task_info.description}}</p>
      </div>
    </div>
  </div>
</template>

<script>
import axios from "axios"
export default {
  data:  () => {
    return {
      task_info: {}
    }
  },
  props: ["tasks"],
  methods: {
    get_task_info (task_id) {
      axios.post('api/v1/get_task_info', {task_id: task_id}).then((response) => {
        this.task_info = response.data
      })
    }
  }
}
</script>

<style scoped>
</style>
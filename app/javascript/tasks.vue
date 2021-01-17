<template>
  <div class="content"> 
    <span class="title">TASK</span>
    <a href="/tasks/new" id="task_new">new</a>
    <div class="task_group">
      <div id="task_list" class="task_list list_group">
        <a href="#" id="task" class="list-group-item list-group-item-action" v-for="task in tasks" :key="task.id" v-on:click.prevent="get_task_info(task.id)">
          {{task.name}}
        </a>
      </div>
      <div class="task_content" v-if="show_content === true">
        <div class="task_name">{{task_info.name}}</div>
        <p>{{task_info.description}}</p>
        <a :href="'tasks/'+task_info.id+'/edit'" id="task_edit">修改</a>
        <a :href="'tasks/'+task_info.id" data-method="delete" rel="nofollow" id="task_delete">刪除</a>
      </div>
    </div>
  </div>
</template>

<script>
import axios from "axios"
export default {
  data:  () => {
    return {
      task_info: {},
      show_content: false
    }
  },
  props: ["tasks"],
  methods: {
    get_task_info (task_id) {
      axios.post('api/v1/get_task_info', {task_id: task_id}).then((response) => {
        this.task_info = response.data
        this.show_content = true
      })
    }
  }
}
</script>

<style scoped>
</style>
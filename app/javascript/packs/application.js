// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.
import TurbolinksAdapter from 'vue-turbolinks'
import Vue from 'vue/dist/vue.esm'
import Bg from '../bg.vue'
import Tasks from '../tasks.vue'

Vue.use(TurbolinksAdapter)
Vue.component('bg', Bg)
Vue.component('tasks', Tasks)
document.addEventListener('turbolinks:load', () => {
  const app = new Vue({
    el: '[data-behavior="vue"]',
    data: () => {
      return {
        message: "Can you say hello?"
      }
    },
    components: { Bg }
  })
})

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"



require('styles')

Rails.start()
Turbolinks.start()
ActiveStorage.start()

import $ from 'jquery'
window.$ = $

import "bootstrap"
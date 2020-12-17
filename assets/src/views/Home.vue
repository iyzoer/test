<template>
  <div class="home">
    <button @click="fetch">Ping</button>
    <div v-for="(text, i) in pong" v-bind:key="i">
      {{ text }}
    </div>
  </div>
</template>

<script lang="ts">
import { Component, Vue } from 'vue-property-decorator'

@Component
export default class Home extends Vue {
  pong: Array<string> = [];

  async fetch () {
    const resp = await fetch('/api/ping', { method: 'GET' })

    this.pong.push(await resp.text())
  }
}
</script>

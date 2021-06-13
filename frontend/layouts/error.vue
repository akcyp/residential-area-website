<template>
  <v-container class="fill-height blue-grey darken-4" fluid>
    <v-container fill-height class="white--text text-center">
      <div class="mx-auto">
        <h1 v-if="error.statusCode === 404">
          {{ pageNotFound }}
        </h1>
        <h1 v-else>
          {{ otherError }}
        </h1>
        <v-btn tile to="/" nuxt>Home page</v-btn>
      </div>
    </v-container>
  </v-container>
</template>

<script lang="ts">
import Vue from 'vue'
export default Vue.extend({
  layout: 'default',
  props: {
    error: {
      type: Object,
      default: null,
    },
  },
  data() {
    return {
      pageNotFound: '404 Not Found',
      otherError: 'An error occurred',
    }
  },
  head() {
    const title: string =
      this.error.statusCode === 404 ? this.pageNotFound : this.otherError
    return {
      title,
    }
  },
})
</script>

<style scoped>
h1 {
  font-size: 20px;
}
</style>

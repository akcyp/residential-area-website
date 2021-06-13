<template>
  <v-parallax :src="image" dark class="main-parallax" :height="height">
    <v-layout align-center column justify-center>
      <h1 class="display-2 font-weight-thin mb-3">{{ heading }}</h1>
      <h4 class="subheading">{{ subheading }}</h4>
    </v-layout>
  </v-parallax>
</template>

<script lang="ts">
import Vue from 'vue'
export default Vue.extend({
  props: {
    image: {
      type: String,
      required: true,
    },
    heading: {
      type: String,
      required: false,
      default: '',
    },
    subheading: {
      type: String,
      required: false,
      default: '',
    },
    height: {
      type: Number,
      required: false,
      default: 400,
    },
  },
})
</script>

<style scoped>
.main-parallax img {
  filter: brightness(0.5);
}
</style>

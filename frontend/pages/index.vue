<template>
  <div>
    <parallax-header
      :image="parallax"
      :heading="heading"
      :subheading="subheading"
    />
    <v-container>
      <main>
        <h2 class="text-h4 pa-5 text-md-center">{{ contentTitle }}</h2>
        <p class="text-body-2 text-justify font-weight-light">{{ content }}</p>
      </main>
      <v-layout align-center justify-center row mb-2 wrap>
        <v-flex v-for="card in cards" :key="card.id" xs12 md4>
          <v-card tile elevation="0" class="pa-2 text-center">
            <v-card-text>
              <v-icon x-large color="blue">mdi-{{ card.icon }}</v-icon>
            </v-card-text>
            <v-card-title class="justify-center">
              <div class="headline">{{ card.title }}</div>
            </v-card-title>
            <v-card-text> {{ card.content }} </v-card-text>
          </v-card>
        </v-flex>
      </v-layout>
    </v-container>
  </div>
</template>

<script lang="ts">
import Vue from 'vue'
import ParallaxHeader from '~/components/ParallaxHeader.vue'

import type { APIHomepageData } from '~/assets/api'

interface CardData {
  id: number
  icon: string
  title: string
  content: string
}

export default Vue.extend({
  components: {
    ParallaxHeader,
  },
  async asyncData({ $axios, env }) {
    const { data } = await $axios.$get<APIHomepageData>(
      (process.client ? env.baseURL : env.baseInternalNetURL) +
        '/api/homepage?populate=*'
    )
    return {
      heading: data.attributes.heading,
      subheading: data.attributes.subHeading,
      contentTitle: data.attributes.contentTitle,
      content: data.attributes.content,
      parallax: env.uploadsURL + data.attributes.parallax.data.attributes.url,
      cards: data.attributes.Cards.map((d) => ({
        id: d.id,
        title: d.heading,
        content: d.content,
        icon: d.icon || '',
      })) as CardData[],
    }
  },
  head() {
    return {
      title: 'Housing estate company',
    }
  },
})
</script>

<style>
.main-parallax img {
  filter: brightness(0.5);
}
</style>

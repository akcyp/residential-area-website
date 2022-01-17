<template>
  <div>
    <parallax-header image="/images/example.jpeg" heading="Investments list" />
    <v-container class="font-weight-light">
      <v-layout align-center justify-center row pa-3 mb-2 wrap>
        <InvestmentCard v-for="(data, i) in list" :key="i" :data="data" />
      </v-layout>
    </v-container>
  </div>
</template>
<script lang="ts">
import Vue from 'vue'
import ParallaxHeader from '~/components/ParallaxHeader.vue'

import { APIInvestmentsData } from '~/assets/api'

interface InvestmentData {
  id: number
  name: string
  shortDescription: string
  thumbnail: {
    url: string
  }
}

export default Vue.extend({
  components: {
    ParallaxHeader,
  },
  async asyncData({ $axios, env }) {
    const { data } = await $axios.$get<APIInvestmentsData>('/api/investments?populate=*')
    return {
      list: data.map(({ id, attributes }) => ({
        id,
        name: attributes.name,
        shortDescription: attributes.shortDescription,
        thumbnail: {
          url: env.uploadsURL + attributes.thumbnail.data.attributes.url,
        },
      })) as InvestmentData[],
    }
  },
  head() {
    return {
      title: 'Investment list',
    }
  },
})
</script>

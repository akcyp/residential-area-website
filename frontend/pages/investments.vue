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

import type { APIInvestmentData } from '~/assets/api'

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
  async asyncData({ $axios }) {
    const data: APIInvestmentData[] = await $axios.$get('/api/investments')
    return {
      list: data.map((d) => ({
        id: d.id,
        name: d.name,
        shortDescription: d.short_description,
        thumbnail: {
          url: $axios.defaults.baseURL + d.thumbnail.url,
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

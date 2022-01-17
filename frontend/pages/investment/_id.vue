<template>
  <div>
    <parallax-header :image="info.thumbnail.url" :heading="info.heading" />
    <v-container class="font-weight-light">
      <main>
        <div>{{ info.fullDescription }}</div>
      </main>
    </v-container>
    <section class="grey lighten-4">
      <v-container class="font-weight-light">
        <v-tabs v-model="tab" fixed-tabs>
          <v-tab v-for="floor in floors" :key="floor.id">
            {{ addOrdinalSuffix(floor.tier + 1) }} floor
          </v-tab>
        </v-tabs>
        <v-tabs-items v-model="tab" class="mt-3">
          <v-tab-item v-for="floor in floors" :key="floor.id">
            <storey-details :data="floor" />
          </v-tab-item>
        </v-tabs-items>
      </v-container>
    </section>
    <section v-if="info.images.length" class="mt-5">
      <v-container>
        <v-carousel hide-delimiters>
          <v-carousel-item
            v-for="item in info.images"
            :key="item.id"
            :src="item.url"
          />
        </v-carousel>
      </v-container>
    </section>
  </div>
</template>

<script lang="ts">
import Vue from 'vue'
import ParallaxHeader from '~/components/ParallaxHeader.vue'
import addOrdinalSuffix from '~/assets/addOrdinalSuffix'

import type { APIInvestmentData, APIStoreyData } from '~/assets/api'

interface InvestmentInfoData {
  heading: string
  fullDescription: string
  thumbnail: {
    url: string
  }
  images: {
    url: string
    id: number
  }[]
}

interface ApartamentData {
  id: number
  name: string
  area: number
  price: number
  polygon: string
  status: 'available' | 'reservation' | 'sold'
}

interface StoreyData {
  id: number
  tier: number
  plan: {
    url: string
    width: number
    height: number
  }
  apartaments: ApartamentData[]
}

export default Vue.extend({
  components: {
    ParallaxHeader,
  },
  async asyncData({ $axios, route: { params }, error }) {
    const { id } = params
    let response: APIInvestmentData
    try {
      response  = await $axios.$get<APIInvestmentData>(`/api/investments/${id}?populate=*`)
      const storeys: APIInvestmentData['data']['attributes']['storeys']['data'] = [];
      for (const { id } of response.data.attributes.storeys.data) {
        const storey = await $axios.$get<APIStoreyData>(`/api/storeys/${id}?populate=*`)
        storeys.push(storey.data)
      }
      response.data.attributes.storeys.data = storeys
    } catch (e) {
      return error({ statusCode: 404, message: 'Post not found' })
    }
    const attributes = response.data.attributes;
    return {
      info: {
        heading: attributes.name,
        fullDescription: attributes.fullDescription,
        thumbnail: {
          url: $axios.defaults.baseURL + attributes.thumbnail.data.attributes.url,
        },
        images: (attributes.images.data || []).map(({ attributes }) => ({
          url: $axios.defaults.baseURL + attributes.url,
        })),
      } as InvestmentInfoData,
      floors: (attributes.storeys.data || [])
        .sort((a, b) => a.attributes.tier - b.attributes.tier)
        .map(({ id, attributes: attrs }) => ({
          id: id,
          tier: attrs.tier,
          plan: {
            url: $axios.defaults.baseURL + attrs.plan.data.attributes.url,
            width: attrs.plan.data.attributes.width,
            height: attrs.plan.data.attributes.height,
          },
          apartaments: (attributes.apartaments.data || [])
            .filter(({ attributes: { tier } }) => tier === attrs.tier)
            .map(({ id, attributes: attrs }) => ({
              id,
              name: attrs.name,
              area: attrs.area,
              price: attrs.pricePerSquareMeter * attrs.area,
              status: attrs.status,
              polygon: attrs.polygonMask,
            })),
        })) as StoreyData[],
    } as const
  },
  data() {
    return {
      tab: 0,
    }
  },
  head() {
    return {
      title: this.$data.info.heading,
    }
  },
  methods: {
    addOrdinalSuffix,
  },
})
</script>

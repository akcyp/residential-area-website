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

import type { APIInvestmentData } from '~/assets/api'

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
    let data: APIInvestmentData
    try {
      data = await $axios.$get(`/api/investments/${id}`)
    } catch (e) {
      return error({ statusCode: 404, message: 'Post not found' })
    }
    return {
      info: {
        heading: data.name,
        fullDescription: data.full_description,
        thumbnail: {
          url: $axios.defaults.baseURL + data.thumbnail.url,
        },
        images: data.images.map(({ url }) => ({
          url: $axios.defaults.baseURL + url,
        })),
      } as InvestmentInfoData,
      floors: data.storeys
        .sort((a, b) => a.tier - b.tier)
        .map((d) => ({
          id: d.id,
          tier: d.tier,
          plan: {
            url: $axios.defaults.baseURL + d.plan.url,
            width: d.plan.width,
            height: d.plan.height,
          },
          apartaments: data.apartaments
            .filter(({ tier }) => d.tier === tier)
            .map((ap) => ({
              id: ap.id,
              name: ap.name,
              area: ap.area,
              price: ap.price_per_square_meter * ap.area,
              status: ap.status,
              polygon: ap.polygon_mask,
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

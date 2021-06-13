<template>
  <v-flex xs12 sm5 ma-3>
    <v-card>
      <v-img
        v-if="data.thumbnail"
        :src="data.thumbnail.url"
        height="200px"
      ></v-img>
      <v-card-title primary-title>
        {{ data.name }}
      </v-card-title>
      <v-card-text>
        {{ data.shortDescription }}
      </v-card-text>
      <v-card-actions>
        <v-btn text color="teal accent-4" nuxt :to="'investment/' + data.id">
          Learn More
        </v-btn>
      </v-card-actions>
    </v-card>
  </v-flex>
</template>

<script lang="ts">
import Vue, { PropOptions } from 'vue'

interface InvestmentCardData {
  id: number
  name: string
  thumbnail: {
    url: string
  }
  shortDescription: string
}

export default Vue.extend({
  props: {
    data: {
      type: Object,
      required: true,
    } as PropOptions<InvestmentCardData>,
  },
})
</script>

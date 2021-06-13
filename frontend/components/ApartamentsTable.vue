<template>
  <client-only>
    <v-data-table :headers="headers" :items="data" class="elevation-1">
      <template #body="{ items }">
        <tbody>
          <tr
            v-for="item in items"
            :key="item.id"
            @mouseover="$emit('hover', item.id)"
            @mouseleave="$emit('hover', -1)"
          >
            <td class="text-left">{{ item.name }}</td>
            <td class="text-center">{{ item.area }}</td>
            <td class="text-center">
              <v-chip color="green" dark>
                {{ addSpacing(item.price, 3) }}
              </v-chip>
            </td>
            <td class="text-center" :style="{ color: getColor(item.status) }">
              {{ item.status }}
            </td>
          </tr>
        </tbody>
      </template>
    </v-data-table>
  </client-only>
</template>

<script lang="ts">
import Vue, { PropOptions } from 'vue'
import addSpacing from '~/assets/addSpacing'

interface ApartamentData {
  id: number
  name: string
  area: number
  price: number
  status: string
  polygon: string
}

export default Vue.extend({
  props: {
    data: {
      type: Array,
      required: true,
    } as PropOptions<ApartamentData[]>,
  },
  data() {
    return {
      headers: [
        { text: '', sortable: false, value: 'name' },
        { text: 'Area', value: 'area', align: 'center' },
        { text: 'Price', value: 'price', align: 'center' },
        { text: 'Status', value: 'status', align: 'center' },
      ],
    }
  },
  beforeDestroy() {
    this.$emit('hover', -1)
  },
  methods: {
    addSpacing,
    getColor(status: string) {
      if (status === 'sold') return 'red'
      else if (status === 'reservation') return 'orange'
      else return 'green'
    },
  },
})
</script>

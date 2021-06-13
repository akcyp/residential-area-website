<template>
  <div>
    <div v-if="data.plan" class="overlay">
      <img :src="data.plan.url" />
      <svg :viewBox="`0 0 ${data.plan.width} ${data.plan.height}`">
        <polygon
          v-for="apartament in data.apartaments"
          :key="apartament.id"
          v-tooltip="getTooltip(apartament)"
          :points="apartament.polygon"
          :class="{ active: apartament.id === active }"
        />
      </svg>
    </div>
    <apartaments-table
      v-if="data.apartaments.length"
      :data="data.apartaments"
      @hover="onHover"
    />
  </div>
</template>

<script lang="ts">
import Vue, { PropOptions } from 'vue'
import ApartamentsTable from './ApartamentsTable.vue'

import addSpacing from '~/assets/addSpacing'

interface ApartamentData {
  id: number
  name: string
  area: number
  price: number
  status: string
  polygon: string
}

interface StoreyDetailsData {
  plan: {
    url: string
    width: number
    height: number
  }
  apartaments: ApartamentData[]
}

export default Vue.extend({
  components: {
    ApartamentsTable,
  },
  props: {
    data: {
      type: Object,
      required: true,
    } as PropOptions<StoreyDetailsData>,
  },
  data() {
    return {
      active: -1,
    }
  },
  methods: {
    onHover(id: number) {
      this.active = id
    },
    getColor(status: string) {
      if (status === 'sold') return 'red'
      else if (status === 'reservation') return 'orange'
      else return 'green'
    },
    getTooltip(apartament: ApartamentData) {
      return {
        content: this.getTooltipContent(apartament),
        placement: 'top-center',
        classes: ['polygon-tip'],
        offset: 20,
      }
    },
    getTooltipContent(apartament: ApartamentData) {
      let str = `<h4 class="subheading font-weight-bold text-uppercase">${apartament.name}</h4>`
      if (apartament.area) {
        str += `<div>Area: ${apartament.area} m&#178;</div>`
      }
      if (apartament.price) {
        const price = addSpacing(apartament.price.toString(), 3)
        str += `<div>Price: ${price} $</div>`
      }
      if (apartament.status) {
        const color = this.getColor(apartament.status)
        str += `<div class="apartament-status" style="color: ${color}">${apartament.status}</div>`
      }
      return str
    },
  },
})
</script>

<style lang="scss">
.overlay {
  position: relative;
  img {
    display: block;
    width: 100%;
  }
  svg {
    width: 100%;
    height: 100%;
    position: absolute;
    top: 0;
    polygon {
      transition: fill 0.5s ease-in-out;
      cursor: pointer;
      fill: rgba(0, 0, 0, 0);
      &:hover,
      &.active {
        fill: rgba(145, 252, 33, 0.5);
      }
    }
  }
}

.tooltip {
  font-family: 'Roboto', sans-serif;
  z-index: 10000;
}
.tooltip-arrow {
  border-color: transparent !important;
  border-top-color: white;
  border-width: 5px 5px 0 5px;
  bottom: -5px;
  left: calc(50% - 5px);
  margin-top: 0;
  margin-bottom: 0;
}
.tooltip.polygon-tip .tooltip-inner {
  background: white;
  color: black;
  padding: 24px;
  border-radius: 5px;
  box-shadow: 0 5px 30px black;
  max-width: 250px;
  h4 {
    margin-bottom: 3px;
  }
  .apartament-status {
    text-align: center;
    margin-top: 3px;
    font-weight: bold;
  }
}
</style>

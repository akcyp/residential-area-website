<template>
  <v-app v-scroll="onScroll">
    <v-app-bar
      fixed
      flat
      class="transparent main-nav white--text"
      :class="{
        active: offsetTop <= 80,
      }"
    >
      <v-menu offset-y>
        <template #activator="{ on }">
          <v-app-bar-nav-icon
            dark
            class="hidden-md-and-up"
            v-on="on"
          ></v-app-bar-nav-icon>
        </template>
        <v-list>
          <v-list-item v-for="(link, i) in links" :key="i">
            <nuxt-link :to="link.to" tag="v-list-item-title">
              <v-list-item-title>{{ link.text }}</v-list-item-title>
            </nuxt-link>
          </v-list-item>
        </v-list>
      </v-menu>
      <nuxt-link to="/" tag="v-toolbar-title">
        <v-toolbar-title class="ml-8" style="cursor: pointer">
          Housing estate
        </v-toolbar-title>
      </nuxt-link>
      <v-spacer></v-spacer>
      <v-btn
        v-for="(link, i) in links"
        :key="i"
        :to="link.to"
        class="hidden-sm-and-down"
        tile
        text
        small
        dark
      >
        {{ link.text }}
      </v-btn>
    </v-app-bar>
    <v-main>
      <nuxt />
    </v-main>
    <v-footer
      height="auto"
      class="grey darken-4 white--text font-weight-light text-body-2"
    >
      <v-container>
        <v-layout justify-space-between>
          <div>
            <strong>Housing estate company</strong>
            &copy;{{ new Date().getFullYear() }}
          </div>
          <div>
            Developed by
            <strong>akcyp</strong>
          </div>
        </v-layout>
      </v-container>
    </v-footer>
  </v-app>
</template>

<script lang="ts">
import Vue from 'vue'

interface NavLink {
  text: string
  to: string
}

export default Vue.extend({
  data() {
    return {
      offsetTop: 0,
      links: [
        {
          text: 'Investments',
          to: '/investments',
        },
      ] as NavLink[],
    }
  },
  methods: {
    onScroll() {
      this.offsetTop = window.pageYOffset || document.documentElement.scrollTop
    },
  },
})
</script>

<style lang="scss">
.main-nav {
  transition: all 0.3s ease-in-out;
  &.active {
    padding: 18px !important;
    color: red;
  }
  &:not(.active) {
    background-color: rgba(0, 0, 0, 0.42) !important;
  }
}
</style>

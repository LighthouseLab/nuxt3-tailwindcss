<template>
  <NuxtLayout name="hello">
    <template #title>{{ productName }} Starter Kit</template>
    <template #message>{{ message }}</template>
  </NuxtLayout>
</template>

<script lang="ts">
import { defineComponent, computed } from 'vue'

export default defineComponent({
  setup() {
    const productName: string = "Nuxt 3";
    const features: string[] = ["Vite", "Vue 3", "TypeScript", "SCSS", "TailwindCSS"];
    const message = computed(
      () => `This is a ${productName} Starter Kit with ${features.slice(0, -1).join(", ")} and ${features.slice(-1)}!`
    )
    return { productName, message }
  },
  layout: false,
})
</script>
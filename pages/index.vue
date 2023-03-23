<template>
  <NuxtLayout name="hello">
    <template #title>{{ productName }}</template>
    <template #message>{{ message }}</template>
  </NuxtLayout>
</template>

<script setup lang="ts">
const productName: string = "Nuxt 3 Starter Kit";
const features: string[] = ["Vite", "Vue 3", "TypeScript", "PostCSS", "TailwindCSS"];
const message = computed(
  () => `This is a ${productName} with ${features.slice(0, -1).join(", ")} and ${features.slice(-1)}!`
);

definePageMeta({
  layout: false,
});
</script>
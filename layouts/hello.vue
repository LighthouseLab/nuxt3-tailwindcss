<template>
  <div class="home">
    <div class="card">
      <h1 class="title"><slot name="title">Nuxt 3 Starter Kit</slot></h1>
      <p><slot name="message">This is a Nuxt 3 starter kit.</slot></p>
      <p class="credit">
        Brought to you by
        <a href="https://twitter.com/RicardoBalk">Ricardo Balk</a>.
      </p>
    </div>
  </div>
</template>

<style lang="scss" scoped>
.home {
  @apply h-screen flex flex-row items-center justify-center text-gray-600;
  @apply dark:bg-gray-900 dark:text-gray-100;

  .card {
    @apply my-4 p-8 rounded-2xl border border-gray-100 shadow-md;
    @apply dark:border-gray-400 dark:shadow-none;

    .title {
      @apply mb-2 text-gray-600 text-3xl font-thin;
      @apply dark:text-blue-400;
    }

    .credit {
      @apply text-xs mt-2;
    }

    a {
      @apply text-blue-600 underline;
      @apply dark:text-blue-200;
    }
  }
}
</style>

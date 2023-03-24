<template>
  <div class="home">
    <div class="card">
      <h1 class="title"><slot name="title">Nuxt 3 Starter Kit</slot></h1>
      <p><slot name="message">This is a Nuxt 3 starter kit.</slot></p>
      <p class="credit">
        Brought to you by
        <a href="https://ricardo.nu/">Ricardo Balk</a>.

        Always check the <a href="https://github.com/ricardobalk/nuxt3-tailwindcss">GitHub repository</a> for the latest version!
      </p>
    </div>
  </div>
</template>

<style lang="postcss" scoped>
.home {
  @apply h-screen flex items-center justify-center bg-gray-925 text-gray-200 p-6;

  .card {
    @apply px-8 py-10 flex flex-col gap-6 rounded-2xl border border-green-900 bg-green-striped shadow-none md:items-center;    

    .title {
      @apply text-green-600 text-3xl font-thin;
    }

    .credit {
      @apply text-xs;
    }

    a {
      @apply text-green-400 hover:text-green-200 underline transition-colors;
    }
  }
}
</style>

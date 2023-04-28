<template>
    <main class="main">
      <section class="home container">
        <HomePage />
      </section>
    </main>
  </template>
  
  <script>
  import HomePage from '@/components/HomePage.vue';
  export default {
    name: 'WorksView',
    components: { HomePage },
  }
  </script>
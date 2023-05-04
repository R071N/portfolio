<template>
  <TheHeader />
  <router-view v-slot="{ Component }">
    <transition name="fade" mode="out-in">
      <component :is="Component" />
    </transition>
  </router-view>
  <TheFooter />
</template>

<script>
import TheHeader from '@/components/TheHeader.vue';
import TheFooter from '@/components/TheFooter.vue';

export default {
  components: { TheHeader, TheFooter }
}
</script>

<style lang="scss">
@import "@/assets/css/normalize.css";
@import "@/assets/css/fonts.css";
@import "@/assets/css/style.scss";
@import "@/assets/css/about.scss";
@import "@/assets/css/skills.scss";
@import "@/assets/css/light.css";
@import "@/assets/css/works.scss";
@import "@/assets/css/media.scss";
</style>


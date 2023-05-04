<template>
  <main class="main">
    <section class="skills">
      <div class="container">
        <div class="skills__logo" v-for="skill in skills " :key="skill.id" :class="`skills__logo${skill.id}`">
          <img :class="[skill.light, `skills__logo__img${skill.size}`]" :src="skill.image"
            :alt="skill.title">
        </div>
      </div>
    </section>
  </main>
</template>

<script>
import skills from '@/data/skills.data';
export default {
  data() {
    return {
      skills,
    }
  }
}
</script>

<style>
@import "@/assets/css/light.css";
</style>

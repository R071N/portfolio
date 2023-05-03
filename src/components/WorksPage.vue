<template>
  <main class="main">
    <section class="works container">
      <div class="works__block" v-for="project in works" :key="project.title">
        <div>
          <img :src="project.image" :alt="project.title" @click="goToDemo(project.demoUrl)">
        </div>
        <div>
          <h2>{{ project.title }}</h2>
          <p>{{ project.description }}</p>
          <a :href="project.gitUrl" target="_blank">Git</a>
          <a :href="project.demoUrl" target="_blank">Demo</a>
        </div>
      </div>
    </section>
  </main>
</template>

<script>
import works from '@/data/works.data.js'

export default {
  name: 'WorksPage',
  data() {
    return {
      works,
    };
  },
  methods: {
    goToDemo(demoUrl) {
      window.open(demoUrl);
    }
  }
}
</script>

<style lang="scss">
.works {
  margin-top: 50px;
  display: grid;
  gap: 50px;
  grid-template-columns: repeat(2, 1fr);
  align-items: center;
  justify-content: space-between;

  &__block {
    padding: 20px;
    display: flex;
    gap: 15px;
    background-color: rgba(0, 0, 0, 0.6);
    border: #000000;
    border-radius: 3%;


    cursor: pointer;

    img {
      width: 100%;
      height: auto;
      border-radius: 5px;
      box-shadow: 0px 0px 10px rgba(0, 0, 0, .2);
    }

    h2 {
      margin-top: 0;
      margin-bottom: 10px;
      font-size: 24px;
      font-weight: bold;
    }

    p {
      margin-top: 0;
      margin-bottom: 20px;
      font-size: 16px;
      line-height: 1.5;
    }

    a {
      display: inline-block;
      margin-right: 10px;
      margin-bottom: 10px;
      padding: 10px;
      border-radius: 5px;
      color: #fff;

      &:last-child {
        background-color: #2196f3;
      }
    }
  }
}
</style>

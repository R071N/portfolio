<template>
  <main class="main">
    <section class="works container">
      <div class="works__block" v-for="project in works" :key="project.title">
        <div>
          <img class="works__block__image" :src="project.image" :alt="project.title" @click="goToDemo(project.demoUrl)">
        </div>
        <div class="works__block__bottom">
          <div>
            <h2 class="works__block__subtitle">{{ project.title }}</h2>
            <p class="works__block__desc">{{ project.description }}</p>
          </div>
          <div class="works__link">
            <a :href="project.gitUrl" target="_blank">
              <svg width="50" height="50" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 100 100">
                <path fill-rule="evenodd" clip-rule="evenodd"
                  d="M48.854 0C21.839 0 0 22 0 49.217c0 21.756 13.993 40.172 33.405 46.69 2.427.49 3.316-1.059 3.316-2.362 0-1.141-.08-5.052-.08-9.127-13.59 2.934-16.42-5.867-16.42-5.867-2.184-5.704-5.42-7.17-5.42-7.17-4.448-3.015.324-3.015.324-3.015 4.934.326 7.523 5.052 7.523 5.052 4.367 7.496 11.404 5.378 14.235 4.074.404-3.178 1.699-5.378 3.074-6.6-10.839-1.141-22.243-5.378-22.243-24.283 0-5.378 1.94-9.778 5.014-13.2-.485-1.222-2.184-6.275.486-13.038 0 0 4.125-1.304 13.426 5.052a46.97 46.97 0 0 1 12.214-1.63c4.125 0 8.33.571 12.213 1.63 9.302-6.356 13.427-5.052 13.427-5.052 2.67 6.763.97 11.816.485 13.038 3.155 3.422 5.015 7.822 5.015 13.2 0 18.905-11.404 23.06-22.324 24.283 1.78 1.548 3.316 4.481 3.316 9.126 0 6.6-.08 11.897-.08 13.526 0 1.304.89 2.853 3.316 2.364 19.412-6.52 33.405-24.935 33.405-46.691C97.707 22 75.788 0 48.854 0z"
                  fill="#fff" />
              </svg>
            </a>
            <a class="btn__link" :href="project.demoUrl" target="_blank">Demo</a>
          </div>
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
  margin-bottom: 50px;
  display: grid;
  gap: 50px;
  grid-template-columns: repeat(2, 1fr);
  grid-template-rows: repeat(2, 1fr);
  align-items: center;
  justify-content: space-between;

  &__block {
    display: flex;
    flex-direction: column;
    padding: 20px;
    height: 100%;
    background-color: rgba(0, 0, 0, 0.6);
    border: #000000;
    border-radius: 3%;

    &__img {
      width: 100%;
      height: auto;
      border-radius: 5px;
      box-shadow: 0px 0px 10px rgba(0, 0, 0, .2);
      cursor: pointer;
    }

    &__subtitle {
      margin-top: 0;
      margin-bottom: 10px;
      font-size: 24px;
      font-weight: bold;
    }

    &__desc {
      margin-top: 0;
      margin-bottom: 20px;
      font-size: 16px;
      line-height: 1.5;
    }
    &__bottom {
      display: flex;
      height: 100%;
      flex-direction: column;
      justify-content: space-between;
    }
  }

  &__link {
    display: flex;
    justify-content: space-between;
  }
}

.btn__link {
  padding: 10px 20px;
  border-radius: 10px;
  align-self: center;
  color: #fff;
  background-color: #2196f3;
}
</style>

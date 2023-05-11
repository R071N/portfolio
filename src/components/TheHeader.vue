<template>
    <header class="header">
    <div class="container">
      <nav class="nav">
        <div class="nav__logo"><router-link :to="{ name: 'home' }" class="logotype">ROLIN</router-link></div>
        <ul class="nav__list">
          <li><router-link class="nav__item" :to="{ name: 'about' }">О себе</router-link></li>
          <li><router-link class="nav__item" :to="{ name: 'skills' }">Навыки</router-link></li>
          <li><router-link class="nav__item" :to="{ name: 'works' }">Примеры работ</router-link></li>
        </ul>
      </nav>
    </div>
  </header>
</template>

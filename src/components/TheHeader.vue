<template>
    <header class="header">
    <div class="container">
      <nav class="nav">
        <div class="nav__logo"><router-link :to="{ name: 'home' }" class="logotype">ROLIN</router-link></div>
        <ul class="nav__list">
          <li><router-link :to="{ name: 'about' }" class="nav__item">О себе</router-link></li>
          <li><router-link :to="{ name: 'skills' }" class="nav__item">Навыки</router-link></li>
          <li><router-link :to="{ name: 'works' }" class="nav__item">Примеры работ</router-link></li>
        </ul>
      </nav>
    </div>
  </header>
</template>

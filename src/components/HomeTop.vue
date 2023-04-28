<template>
    <swiper :speed="600" :parallax="true" :modules="modules" class="mySwiper">
        <div slot="container-start" class="parallax-bg" data-swiper-parallax="0%"
            :style="{ 'background': 'url(./assets/img/back.jpg)' }">
        </div>
        <swiper-slide>
            <div class="title" data-swiper-parallax="0">Slide 1</div>
            <div class="subtitle" data-swiper-parallax="0">Subtitle</div>
            <div class="text" data-swiper-parallax="0">
                <p>
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam
                    dictum mattis velit, sit amet faucibus felis iaculis nec. Nulla
                    laoreet justo vitae porttitor porttitor. Suspendisse in sem justo.
                    Integer laoreet magna nec elit suscipit, ac laoreet nibh euismod.
                    Aliquam hendrerit lorem at elit facilisis rutrum. Ut at ullamcorper
                    velit. Nulla ligula nisi, imperdiet ut lacinia nec, tincidunt ut
                    libero. Aenean feugiat non eros quis feugiat.
                </p>
            </div>
        </swiper-slide>
        <swiper-slide>
            <div class="title" data-swiper-parallax="0">Slide 2</div>
            <div class="subtitle" data-swiper-parallax="0">Subtitle</div>
            <div class="text" data-swiper-parallax="0">
                <p>
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam
                    dictum mattis velit, sit amet faucibus felis iaculis nec. Nulla
                    laoreet justo vitae porttitor porttitor. Suspendisse in sem justo.
                    Integer laoreet magna nec elit suscipit, ac laoreet nibh euismod.
                    Aliquam hendrerit lorem at elit facilisis rutrum. Ut at ullamcorper
                    velit. Nulla ligula nisi, imperdiet ut lacinia nec, tincidunt ut
                    libero. Aenean feugiat non eros quis feugiat.
                </p>
            </div>
        </swiper-slide>
        <swiper-slide>
            <div class="title" data-swiper-parallax="-300">Slide 3</div>
            <div class="subtitle" data-swiper-parallax="-200">Subtitle</div>
            <div class="text" data-swiper-parallax="-100">
                <p>
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam
                    dictum mattis velit, sit amet faucibus felis iaculis nec. Nulla
                    laoreet justo vitae porttitor porttitor. Suspendisse in sem justo.
                    Integer laoreet magna nec elit suscipit, ac laoreet nibh euismod.
                    Aliquam hendrerit lorem at elit facilisis rutrum. Ut at ullamcorper
                    velit. Nulla ligula nisi, imperdiet ut lacinia nec, tincidunt ut
                    libero. Aenean feugiat non eros quis feugiat.
                </p>
            </div>
        </swiper-slide>
    </swiper>
</template>
  
<script>
import { Swiper, SwiperSlide } from "swiper/vue";

// Import Swiper styles
import "swiper/css";

// import required modules
import { Parallax } from "swiper";
export default {
    name: 'HomeTop',
    components: {
        Swiper,
        SwiperSlide,
    },
    setup() {
        return {
            modules: [Parallax],
        };
    },
};
</script>
  
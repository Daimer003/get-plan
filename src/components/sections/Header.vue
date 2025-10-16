<script setup lang="ts">
import EventBanner from '../banner/EventBanner.vue';
import BaseButton from '../button/BaseButton.vue';
import Navbar from '../shared/Navbar.vue';

</script>

<template>
  <section class="flex w-full flex-col justify-center items-center relative text-white  p-3 md:p-5 z-10">

    <div class="absolute inset-0 bg-[url('@/assets/images/bg-grid-get-plan.png')]
           bg-no-repeat bg-center bg-[length:100%_auto] 2xl:bg-[length:90%_auto]
           opacity-10 pointer-events-none z-0">
    </div>

    <Navbar />

    <div
      class="relative z-10 max-w-[1439px] w-full grid grid-cols-1 md:grid-cols-2 gap-10 items-center mt-[60px] mb-[191px]">
      <!-- Texto principal -->
      <div>
        <div class="space-y-[16px]">
          <p class="text-xl tracking-[-5%] text-white poppins">
            El entorno va muy rápido, y debes llevar tu
          </p>

          <h1 class="text-5xl md:text-[56px] leading-[56px] tracking-[-5%] poppins font-medium">
            Estrategia
            <span class="block text-white">al mejor futuro</span>
          </h1>

          <p class="text-xl mt-4 text-white/90 tracking-[-5%] poppins">
            Ven y conoce cómo hacerlo con IA
          </p>

          <p class="text-md mt-6 uppercase font-regular tracking-wide text-white/60 poppins">
            Evento virtual de 90 mins sobre estrategia potenciada con inteligencia artificial,
            gratuíto para líderes de empresas LATAM
          </p>
        </div>

        <!-- Botones -->
        <div class="flex flex-wrap gap-4 mt-[48px]">
          <BaseButton label="Inscríbete gratis" href="#registro" variant="solid" />
          <BaseButton label="Qué aprenderás" href="#detalles" variant="outline" />
        </div>
      </div>

      <!-- Video placeholder -->
      <div
        class="relative aspect-video rounded-2xl bg-white/10 backdrop-blur-sm flex items-center justify-center border border-white/20 p-2">
        <button
          class="w-14 h-14 rounded-full bg-white flex items-center justify-center shadow-lg hover:scale-105 transition">
          <svg xmlns="http://www.w3.org/2000/svg" class="w-6 h-6 text-black" fill="currentColor" viewBox="0 0 16 16">
            <path d="M6.79 5.093A.5.5 0 0 0 6 5.5v5a.5.5 0 0 0 .79.407l3.5-2.5a.5.5 0 0 0 0-.814l-3.5-2.5z" />
          </svg>
        </button>
      </div>
    </div>

    <!-- Barra inferior -->
    <EventBanner />
  </section>
</template>

<script>

</script>
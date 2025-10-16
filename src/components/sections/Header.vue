<script setup lang="ts">
import Navbar from '../shared/Navbar.vue';
</script>

<template>
  <section
    class="flex w-full flex-col justify-center items-center relative text-white  overflow-hidden p-3 md:p-5 z-0">

 <div
    class="absolute inset-0 bg-[url('@/assets/images/bg-grid-get-plan.png')]
           bg-no-repeat bg-center bg-[length:100%_auto] 2xl:bg-[length:90%_auto]
           opacity-10 pointer-events-none z-0">
  </div>

    <Navbar />

    <div class="relative z-10 max-w-[1200px] w-full grid grid-cols-1 md:grid-cols-2 gap-10 items-center mt-[60px] mb-[100px]">
      <!-- Texto principal -->
      <div>
        <div class="space-y-[16px]">
          <p class="text-xl uppercase tracking-[-5%] text-white font-poppins">
            El entorno va muy rápido, y debes llevar tu
          </p>

          <h1 class="text-5xl md:text-[56px] leading-[56px] tracking-[-5%] font-poppins font-medium">
            Estrategia
            <span class="block text-white">al mejor futuro</span>
          </h1>

          <p class="text-xl mt-4 text-white/90 tracking-[-5%]">
            Ven y conoce cómo hacerlo con IA
          </p>

          <p class="text-md mt-6 uppercase font-regular tracking-wide text-white/60">
            Evento virtual de 90 mins sobre estrategia potenciada con inteligencia artificial,
            gratuíto para líderes de empresas LATAM
          </p>
        </div>

        <!-- Botones -->
        <div class="mt-10 flex flex-wrap gap-4">
          <button
            class="bg-white text-black px-6 py-3 rounded-full font-semibold flex items-center gap-2 hover:bg-gray-200 transition">
            Inscríbete gratis
            <span class="inline-flex items-center justify-center w-6 h-6 bg-black text-white rounded-full">
              →
            </span>
          </button>

          <button class="bg-white/20 text-white px-6 py-3 rounded-full font-medium hover:bg-white/30 transition">
            Qué aprenderás
          </button>
        </div>
      </div>

      <!-- Video placeholder -->
      <div
        class="relative aspect-video rounded-2xl bg-white/10 backdrop-blur-sm flex items-center justify-center border border-white/20 p-2">
        <button class="w-14 h-14 rounded-full bg-white flex items-center justify-center shadow-lg hover:scale-105 transition">
          <svg xmlns="http://www.w3.org/2000/svg" class="w-6 h-6 text-black" fill="currentColor" viewBox="0 0 16 16">
            <path d="M6.79 5.093A.5.5 0 0 0 6 5.5v5a.5.5 0 0 0 .79.407l3.5-2.5a.5.5 0 0 0 0-.814l-3.5-2.5z" />
          </svg>
        </button>
      </div>
    </div>

    <!-- Barra inferior -->
    <div class="relative z-10 w-full bg-[#090c1b] py-6">
      <div
        class="max-w-4xl mx-auto flex flex-col md:flex-row items-center justify-between text-center md:text-left px-6 gap-6">
        <div>
          <h2 class="text-xl font-extrabold">No te quedes fuera</h2>
          <p class="text-sm text-gray-300">Gratis por tiempo limitado</p>
        </div>

        <div class="flex gap-4 text-center">
          <div>
            <p class="text-3xl font-bold">01</p>
            <p class="text-xs uppercase text-gray-400">Días</p>
          </div>
          <div>
            <p class="text-3xl font-bold">22</p>
            <p class="text-xs uppercase text-gray-400">Hrs</p>
          </div>
          <div>
            <p class="text-3xl font-bold">89</p>
            <p class="text-xs uppercase text-gray-400">Mins</p>
          </div>
        </div>

        <div class="text-sm text-gray-300">
          <p>12 de noviembre</p>
          <p>9:00 a 11:00 am</p>
          <p>Evento Virtual</p>
        </div>
      </div>
    </div>
  </section>
</template>
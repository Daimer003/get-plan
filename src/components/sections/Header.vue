<template>
  <section class="flex w-full justify-center relative bg-gradient-to-r from-[#4b0035] to-[#000]  text-white ">
    <div class="max-w-[1439px]  w-full  grid grid-cols-1 md:grid-cols-2 gap-12 items-center mt-[78px] mb-20">
      <!-- Texto principal -->
      <div>
        <div class="space-y-3">
          <p class="text-sm uppercase tracking-wide text-gray-300">
            El entorno va muy rápido, y debes llevar tu
          </p>

          <h1 class="text-5xl md:text-6xl font-extrabold leading-tight">
            Estrategia
            <span class="block font-semibold text-white">al mejor futuro</span>
          </h1>

          <p class="text-lg mt-4 text-gray-300">
            Ven y conoce cómo hacerlo con IA
          </p>

          <p class="text-xs mt-6 uppercase tracking-wide text-pink-300">
            Evento virtual de 90 mins sobre estrategia potenciada con inteligencia artificial, 
            gratuíto para líderes de empresas LATAM
          </p>
        </div>

        <!-- Botones -->
        <div class="mt-10 flex flex-wrap gap-4">
          <button
            class="bg-white text-black px-6 py-3 rounded-full font-semibold flex items-center gap-2 hover:bg-gray-200 transition"
          >
            Inscríbete gratis
            <span class="inline-flex items-center justify-center w-6 h-6 bg-black text-white rounded-full">
              →
            </span>
          </button>

          <button
            class="bg-white/20 text-white px-6 py-3 rounded-full font-medium hover:bg-white/30 transition"
          >
            Qué aprenderás
          </button>
        </div>
      </div>

      <!-- Video placeholder -->
      <div
        class="relative aspect-video rounded-2xl bg-gray-300 flex items-center justify-center border-4 border-white/30"
      >
        <button
          class="w-16 h-16 rounded-full bg-white flex items-center justify-center shadow-lg"
        >
          <svg
            xmlns="http://www.w3.org/2000/svg"
            class="w-8 h-8 text-black"
            fill="currentColor"
            viewBox="0 0 16 16"
          >
            <path
              d="M6.79 5.093A.5.5 0 0 0 6 5.5v5a.5.5 0 0 0 .79.407l3.5-2.5a.5.5 0 0 0 0-.814l-3.5-2.5z"
            />
          </svg>
        </button>
      </div>
    </div>

    <!-- Barra inferior -->
    <div class="absolute -bottom-20 left-0 w-full bg-[#090c1b] py-6">
      <div
        class="max-w-4xl mx-auto flex flex-col md:flex-row items-center justify-between text-center md:text-left px-6 gap-6"
      >
        <div>
          <h2 class="text-xl font-extrabold">No te quedes fuera</h2>
          <p class="text-sm text-gray-300">Gratis por tiempo limitado</p>
        </div>

        <!-- Contador -->
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


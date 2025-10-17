<script setup lang="ts">
import Earth from '../animations/Earth.vue';

</script>

<template>
  <section class="relative w-full flex justify-center bg-white text-gray-900 py-30 2xl:py-40  overflow-hidden z-0 ">
    <!-- Fondo con mapa -->
    <div
      class="absolute w-full  inset-0  bg-left left-0 2xl:left-80  pointer-events-none mt-[94px]">
      <Earth />
    </div>

    <div class="relative w-full  max-w-[1439px] px-6 grid grid-cols-1 md:grid-cols-2 items-center gap-10">
      <!-- Izquierda -->
      <div class="min-h-100">
        <div class="inline-block bg-gray-100 text-black px-4 py-2 rounded-full text-md poppins font-regular mb-10">
          ● SOMOS CHANGE AMERICAS
        </div>

        <div class="flex items-start gap-3 mb-10 mt-[158px]">
          <svg xmlns="http://www.w3.org/2000/svg" class="w-6 h-6 text-black" fill="none" viewBox="0 0 24 24"
            stroke="currentColor">
            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
              d="M12 2a10 10 0 100 20 10 10 0 000-20zM2 12h20M12 2a15.3 15.3 0 010 20M12 2a15.3 15.3 0 010 20" />
          </svg>
          <div  >
            <p class="font-semibold">+20 Países</p>
            <p class="text-sm text-gray-500">+1200 Empresas en LatAm</p>
          </div>
        </div>
      </div>

      <!-- Derecha -->
      <div>
        <h2 class="text-3xl md:text-4xl font-regular leading-tight tracking-[-3px] mb-12 poppins text-end">
          El futuro debe ser liderado, <br />
          <span class="text-[#8C8CA1] font-regular poppins tracking-[-3px]">
            este es un evento para Líderes que quieren
          </span>
          hacer que los cambios ocurran.
        </h2>

        <div class="grid grid-cols-1 sm:grid-cols-3 gap-8">
          <div class="text-center sm:text-left">
            <div class="flex justify-center sm:justify-start mb-3">
              <svg xmlns="http://www.w3.org/2000/svg" class="w-10 h-10 text-gray-800" fill="none" viewBox="0 0 24 24"
                stroke="currentColor">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="1.5" d="M12 6v12m6-6H6" />
              </svg>
            </div>
            <h3 class="font-medium text-lg mb-2 poppins tracking-0 leading-[24px]">Speakers en estrategia e IA</h3>
            <p class="text-gray-500 text-md poppins tracking-0 leading-[24px]">
              Expertos con más de 15 años creando estrategia para empresas en LatAm.
            </p>
          </div>

          <div class="text-center sm:text-left">
            <div class="flex justify-center sm:justify-start mb-3">
              <svg xmlns="http://www.w3.org/2000/svg" class="w-10 h-10 text-gray-800" fill="none" viewBox="0 0 24 24"
                stroke="currentColor">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="1.5" d="M12 4.5v15m7.5-7.5h-15" />
              </svg>
            </div>
            <h3 class="font-medium text-lg mb-2 poppins tracking-0 leading-[24px]">Tendencias para el futuro</h3>
            <p class="text-gray-500 text-md poppins tracking-0 leading-[24px] ">
              Actualízate sobre tendencias para hoy el futuro de la estrategia.
            </p>
          </div>

          <div class="text-center sm:text-left">
            <div class="flex justify-center sm:justify-start mb-3">
              <svg xmlns="http://www.w3.org/2000/svg" class="w-10 h-10 text-gray-800" fill="none" viewBox="0 0 24 24"
                stroke="currentColor">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="1.5" d="M7 8h10M7 12h10m-5 4h5" />
              </svg>
            </div>
            <h3 class="font-medium text-lg mb-2 poppins tracking-0 leading-[24px]">Evento virtual sincrónico</h3>
            <p class="text-gray-500 text-md poppins tracking-0 leading-[24px]">
              Conéctate desde cualquier lugar, aprende y participa.
            </p>
          </div>
        </div>
      </div>
    </div>
  </section>
</template>
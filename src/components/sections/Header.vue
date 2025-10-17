<script setup lang="ts">
import { ref } from "vue"
import EventBanner from "../banner/EventBanner.vue"
import BaseButton from "../button/BaseButton.vue"
import Navbar from "../shared/Navbar.vue"
import RegistroForm from "../sections/RegisterForm.vue" // 👈 tu componente existente

// Estado para mostrar/ocultar el panel
const showRegistro = ref(false)
</script>

<template>
  <section
    class="flex w-full flex-col justify-center items-center relative text-white px-4 xl:px-20 z-10"
  >
    <!-- Fondo -->
    <div
      class="absolute inset-0 bg-[url('/assets/images/bg-grid-get-plan.png')]
             bg-no-repeat bg-center bg-[length:100%_auto] 2xl:bg-[length:90%_auto]
             opacity-10 pointer-events-none z-0"
    ></div>

    <Navbar />

    <!-- Contenido principal -->
    <div
      class="relative z-10 max-w-[1439px] w-full grid grid-cols-1 md:grid-cols-2 gap-10 items-center mt-[60px] mb-[270px] md:mb-[191px]"
    >
      <!-- Texto principal -->
      <div>
        <div class="space-y-[16px]">
          <p class=" text-md md:text-xl tracking-[-5%] text-white poppins">
            El entorno va muy rápido, y debes llevar tu
          </p>

          <h1
            class="text-5xl md:text-[56px] leading-[56px] tracking-[-5%] poppins font-medium"
          >
            Estrategia
            <span class="block text-white">al mejor futuro</span>
          </h1>

          <p class="text-md md:text-xl  mt-4 text-white/90 tracking-[-5%] poppins">
            Ven y conoce cómo hacerlo con IA
          </p>

          <p
            class="text-md mt-6 uppercase font-regular tracking-wide text-white/60 poppins"
          >
            Evento virtual de 90 mins sobre estrategia potenciada con inteligencia artificial,
            gratuito para líderes de empresas LATAM
          </p>
        </div>

        <!-- Botones -->
        <div class="flex flex-wrap gap-4 mt-[48px]">
          <BaseButton
            label="Inscríbete gratis"
            @click="showRegistro = true"
            variant="solid"
          />
          <BaseButton label="Qué aprenderás" href="#Qué-aprenderás" variant="outline" />
        </div>
      </div>

      <!-- Video placeholder -->
      <div
        class="relative aspect-video rounded-2xl bg-white/10 backdrop-blur-sm flex items-center justify-center border border-white/20 p-2"
      >
        <button
          class="w-14 h-14 rounded-full bg-white flex items-center justify-center shadow-lg hover:scale-105 transition"
        >
          <svg
            xmlns="http://www.w3.org/2000/svg"
            class="w-6 h-6 text-black"
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
    <EventBanner />

    <!-- Panel lateral -->
    <transition name="slide">
      <div
        v-if="showRegistro"
        class="fixed inset-0 bg-black/50 backdrop-blur-sm z-50 flex justify-end"
        @click.self="showRegistro = false"
      >
        <div
          class="w-full sm:w-[450px] bg-white text-gray-900 h-full py-6 px-5 shadow-xl overflow-y-auto rounded-l-2xl"
        >
          <div class="flex justify-between items-center mb-4">
            <h2 class="text-2xl font-bold">Formulario de registro</h2>
            <button
              @click="showRegistro = false"
              class="text-gray-500 hover:text-gray-700 transition"
            >
              ✕
            </button>
          </div>

          <!-- Aquí tu formulario -->
          <RegistroForm />
        </div>
      </div>
    </transition>
  </section>
</template>

<style scoped>
.slide-enter-active,
.slide-leave-active {
  transition: all 0.3s ease;
}
.slide-enter-from {
  transform: translateX(100%);
  opacity: 0;
}
.slide-leave-to {
  transform: translateX(100%);
  opacity: 0;
}
</style>
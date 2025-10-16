<script setup lang="ts">
interface Props {
  date?: string
  time?: string
  mode?: string
  days?: string
  hours?: string
  minutes?: string
}

defineProps<Props>()
</script>

<template>
  <div class="absolute -bottom-[60px] w-full max-w-[900px] z-12 p-3">
    <section
      class="w-full h-full relative bg-[#0B0B1C] rounded-2xl text-white py-5 px-8 md:px-12 flex flex-col md:flex-row items-center overflow-hidden  justify-between gap-10 z-12">
      <!-- Imagen de fondo con círculos -->

      <img src="@/assets/images/path.webp" alt="Decoración de fondo"
        class="absolute bottom-0 left-60  w-[172px] h-auto object-cover  pointer-events-none z-10" />

      <img src="@/assets/images/path.webp" alt="Decoración de fondo"
        class="absolute top-0 left-0 xl:left-120 rotate-180 inset-12 w-[172px] h-auto object-cover  pointer-events-none z-10" />


      <!-- Texto principal -->
      <div class="relative z-10 text-center md:text-left">
        <h2 class="text-[24px] font-extrabold unbounded">No te quedes fuera</h2>
        <p class="text-[14px] text-white/80 unbounded">Gratis por tiempo limitado</p>
      </div>

      <!-- Contador -->
      <div class="relative z-10 flex gap-4 text-center">
        <div class="bg-white text-black rounded-2xl px-6 py-3">
          <p class="text-[18px] unbounded font-bold">{{ days || '01' }}</p>
          <p class="text-[8.6px] uppercase font-semibold">DÍAS</p>
        </div>
        <div class="bg-white text-black rounded-2xl px-6 py-3">
          <p class="text-[18px] unbounded  font-bold">{{ hours || '22' }}</p>
          <p class="text-[8.6px] uppercase font-semibold">HRS</p>
        </div>
        <div class="bg-white text-black rounded-2xl px-6 py-3">
          <p class="text-[18px]  unbounded font-bold">{{ minutes || '89' }}</p>
          <p class="text-[8.6px] uppercase font-semibold">MINS</p>
        </div>
      </div>

      <!-- Info del evento -->
      <div class="relative z-10 text-center md:text-right text-white">
        <p class="unbounded text-xs">{{ date || '12 de noviembre' }}</p>
        <p class="unbounded text-xs">{{ time || '9:00 a 11:00 am' }}</p>
        <p class="unbounded text-xs">{{ mode || 'Evento Virtual' }}</p>
      </div>
    </section>
  </div>
</template>

<style scoped>
.opacity-15 {
  opacity: 0.15;
}
</style>
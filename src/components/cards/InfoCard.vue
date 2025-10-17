<template>
  <div class="relative w-full max-w-[413px] rounded-3xl shadow-md py-[49px] px-[69px] transition-transform duration-300 hover:-translate-y-1 hover:shadow-lg 
    " :class="customClass">
    <!-- Icono -->
    <div class="w-10 h-10 flex items-center justify-center rounded-md mb-6" :class="iconBg">
      <img :src="img" alt="Iconos" class="w-[30px] h-[30px]" />
    </div>

    <!-- Texto -->
    <h3 class="font-semibold text-start unbounded text-lg mb-3">{{ title }}</h3>
    <p class="text-[17px] text-start leading-relaxed poppins opacity-70">{{ text }}</p>
  </div>
</template>

<script setup>
defineProps({
  title: String,
  text: String,
  iconBg: {
    type: String,
    default: 'bg-gray-100',
  },
  img: String,
  customClass: {
    type: String,
    default: '',
  },
})
</script>
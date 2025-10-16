<template>
  <div
    class="relative w-full max-w-[380px] rounded-3xl shadow-md p-8 transition-transform duration-300 hover:-translate-y-1 hover:shadow-lg"
    :class="customClass"
  >
    <!-- Icono -->
    <div
      class="w-10 h-10 flex items-center justify-center rounded-md mb-6"
      :class="iconBg"
    >
      <svg
        xmlns="http://www.w3.org/2000/svg"
        class="w-5 h-5 text-[#7b1c5b]"
        fill="none"
        viewBox="0 0 24 24"
        stroke="currentColor"
      >
        <path
          stroke-linecap="round"
          stroke-linejoin="round"
          stroke-width="2"
          d="M17 7l-10 10m0-6v6h6"
        />
      </svg>
    </div>

    <!-- Texto -->
    <h3 class="font-semibold text-lg mb-3">{{ title }}</h3>
    <p class="text-sm leading-relaxed opacity-80">{{ text }}</p>
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
  customClass: {
    type: String,
    default: '',
  },
})
</script>
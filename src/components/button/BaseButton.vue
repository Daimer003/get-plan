<script setup lang="ts">
import { computed } from 'vue'

interface Props {
  label: string
  href?: string
  variant?: 'solid' | 'outline'
}

const props = defineProps<Props>()

const baseClass =
  'inline-flex items-center justify-center gap-3 rounded-full font-poppins text-lg transition-all duration-300 focus:outline-none'

const variantClass = computed(() => {
  if (props.variant === 'outline') {
    return 'bg-white/20 text-white hover:bg-white/30 backdrop-blur-md'
  }
  // default: solid
  return 'bg-[#0B0B1A] text-white hover:bg-[#12122A]'
})
</script>

<template>
  <a
    :href="href"
    class="group px-3 py-3 font-medium "
    :class="[baseClass, variantClass]"
  >
    <span class="px-3 text-[16px]">{{ label }}</span>

    <!-- Ícono solo para el botón solid -->
    <span
      v-if="variant !== 'outline'"
      class="inline-flex items-center justify-center w-[38px] h-[38px]  bg-white text-black rounded-full group-hover:translate-x-1 transition-transform"
    >
      →
    </span>
  </a>
</template>
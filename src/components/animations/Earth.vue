<template>
  <div class="relative w-[600px] xl:w-[713px] h-[600px] xl:h-[713px]">
    <img
      src="@/assets/images/earth.png"
      alt="planeta animado"
      class="absolute  w-full h-full object-contain animate-rotate-slow "
    />
  </div>
</template>

<style scoped>
@keyframes rotate-slow {
  from {
    transform: rotate(0deg);
  }
  to {
    transform: rotate(360deg);
  }
}

.animate-rotate-slow {
  animation: rotate-slow 350s linear infinite;
}
</style>
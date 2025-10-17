<template>
  <div
    class="fixed inset-0 -z-10 overflow-hidden -top-[1000px] 2xl:-top-[80%] -left-[1300px] md:-left-[50%] xl:-left-[30%] 2xl:-left-[10%]"
  >
    <img
      src="/assets/svgs/gradient-get-plan.svg"
      alt="Animated gradient background"
      class="absolute w-[2200px]
             max-w-none object-contain animate-gradientMove pointer-events-none select-none"
    />
  </div>
</template>

<style scoped>
@keyframes gradientMove {
  0% {
    transform: scale(1) translate(0, 0);
    filter: blur(0px) saturate(110%);
  }
  50% {
    transform: scale(1.02) translate(-1%, 1%);
    filter: blur(8px) saturate(120%);
  }
  100% {
    transform: scale(1) translate(0, 0);
    filter: blur(0px) saturate(110%);
  }
}

.animate-gradientMove {
  animation: gradientMove 5s ease-in-out infinite;
  will-change: transform, filter;
}
</style>
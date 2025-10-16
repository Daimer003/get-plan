<template>
  <div class="min-h-screen flex justify-center  text-white ">
    <!-- Contenedor centrado -->
    <main class="w-full flex justify-center ">
        <div class="w-full">
            <slot />
        </div>
      <!-- Aquí se inyectan los componentes -->
    </main>
  </div>
</template>

<script setup>
// No necesita lógica adicional, solo estructura
</script>

<style scoped>

</style>
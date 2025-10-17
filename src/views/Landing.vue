<script setup>
import { ref, onMounted } from 'vue'
import Layout from '../components/layout/Layout.vue'
import AboutSection from '../components/sections/AboutSection.vue'
import FutureSection from '../components/sections/FutureSection.vue'
import Header from '../components/sections/Header.vue'
import OrganizerSection from '../components/sections/OrganizerSection.vue'
import RegisterForm from '../components/sections/RegisterForm.vue'

const loading = ref(true)

onMounted(() => {
  // Se oculta el spinner solo cuando TODO el contenido está cargado
  if (document.readyState === 'complete') {
    loading.value = false
  } else {
    window.addEventListener('load', () => {
      loading.value = false
    })
  }
})
</script>

<template>
  <div>
    <!-- Spinner mientras carga -->
    <div
      v-if="loading"
      class="fixed inset-0 flex items-center justify-center bg-[#090c1b] z-[9999]"
    >
      <div class="animate-spin rounded-full h-14 w-14 border-t-4 border-b-4 border-white"></div>
    </div>

    <!-- Contenido principal -->
    <div v-else class="fade-in">
      <Layout>
        <Header />
        <AboutSection />
        <FutureSection />
        <OrganizerSection />
        <RegisterForm />
      </Layout>
    </div>
  </div>
</template>

<style scoped>
.fade-in {
  opacity: 0;
  animation: fadeIn 0.8s ease forwards;
}

@keyframes fadeIn {
  to {
    opacity: 1;
  }
}
</style>
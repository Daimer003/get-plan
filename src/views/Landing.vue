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
  const MIN_LOAD_TIME = 1500 // tiempo mínimo del spinner (en ms)
  const startTime = Date.now()

  const hideLoader = () => {
    const elapsed = Date.now() - startTime
    const remaining = Math.max(MIN_LOAD_TIME - elapsed, 0)
    setTimeout(() => {
      loading.value = false
    }, remaining)
  }

  if (document.readyState === 'complete') {
    hideLoader()
  } else {
    window.addEventListener('load', hideLoader)
  }
})
</script>

<template>
  <div>
    <!-- Spinner mientras carga -->
    <div
      v-if="loading"
      class="fixed inset-0 flex w-full h-screen items-center justify-center bg-[#0B0B1C] z-[9999]"
    >
      <div class="animate-spin rounded-full h-14 w-14 border-t-4 border-b-4 border-[#A00B64]"></div>
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
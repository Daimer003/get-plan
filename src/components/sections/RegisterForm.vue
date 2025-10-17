<script setup>
import { ref } from 'vue'
import { supabase } from '@/lib/supabase'

const nombres = ref('')
const whatsapp = ref('')
const email = ref('')
const empresa = ref('')
const rol = ref('')
const loading = ref(false)
const success = ref(false)

const handleSubmit = async (e) => {
  e.preventDefault()
  loading.value = true

  const { error } = await supabase.from('inscripciones').insert([
    {
      nombres: nombres.value,
      whatsapp: whatsapp.value,
      email: email.value,
      empresa: empresa.value,
      rol: rol.value,
    },
  ])

  loading.value = false

  if (error) {
    alert('Hubo un error al registrar: ' + error.message)
  } else {
    success.value = true
    nombres.value = ''
    whatsapp.value = ''
    email.value = ''
    empresa.value = ''
    rol.value = ''
  }
}
</script>

<template>
  <section class="w-full flex justify-center bg-[#f9fafb] py-20">
    <div class="w-full px-6 flex justify-center">
      <div class="bg-white w-full max-w-[1439px] p-10 rounded-2xl shadow-sm border border-gray-100">
        <h2 class="text-2xl font-extrabold text-gray-900 mb-8">Inscríbete Gratis Por Tiempo Limitado</h2>

        <form @submit="handleSubmit" class="space-y-6">
          <input v-model="nombres" type="text" placeholder="Nombres y apellido:*" class="w-full text-black rounded-xl bg-gray-100 px-4 py-3" />
          <div class="grid grid-cols-1 md:grid-cols-2 gap-4">
            <input v-model="whatsapp" type="text" placeholder="Whatsapp:*" class="w-full  text-black rounded-xl bg-gray-100 px-4 py-3" />
            <input v-model="email" type="email" placeholder="Email:*" class="w-full rounded-xl  text-black bg-gray-100 px-4 py-3" />
          </div>
          <input v-model="empresa" type="text" placeholder="Empresa:*" class="w-full rounded-xl  text-black bg-gray-100 px-4 py-3" />
          <input v-model="rol" type="text" placeholder="Rol:*" class="w-full rounded-xl  text-black bg-gray-100 px-4 py-3" />

          <p class="text-xs text-gray-500">Tus datos serán tratados según nuestra política de privacidad.</p>

          <div class="pt-2">
            <button :disabled="loading" type="submit" class="bg-[#A00B64] text-white font-semibold px-8 py-3 rounded-md">
              {{ loading ? 'Registrando...' : 'Registrarme al evento' }}
            </button>
          </div>

          <p v-if="success" class="text-green-600 text-sm pt-2">✅ Registro exitoso</p>
        </form>
      </div>
    </div>
  </section>
</template>
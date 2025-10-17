<template>
  <section class="w-full flex justify-center bg-[#f9fafb] py-20">
    <div class="w-full px-6 flex justify-center">
      <div
        class="bg-white w-full max-w-[1439px] p-10 rounded-2xl shadow-sm border border-gray-100"
      >
        <h2 class="text-2xl font-extrabold text-gray-900 mb-8 text-start unbounded">
          Inscríbete Gratis Por Tiempo Limitado
        </h2>

        <form @submit.prevent="handleSubmit" class="space-y-6">
          <input
            v-model="nombres"
            type="text"
            placeholder="Nombres y apellidos:*"
            required
            class="w-full rounded-xl bg-gray-100 text-gray-800 px-4 py-3 outline-none focus:ring-2 focus:ring-[#9b2973]"
          />

          <div class="grid grid-cols-1 md:grid-cols-2 gap-4">
            <input
              v-model="whatsapp"
              type="text"
              placeholder="Whatsapp:*"
              required
              class="w-full rounded-xl bg-gray-100 text-gray-800 px-4 py-3 outline-none focus:ring-2 focus:ring-[#9b2973]"
            />
            <input
              v-model="email"
              type="email"
              placeholder="Email:*"
              required
              class="w-full rounded-xl bg-gray-100 text-gray-800 px-4 py-3 outline-none focus:ring-2 focus:ring-[#9b2973]"
            />
          </div>

          <input
            v-model="empresa"
            type="text"
            placeholder="Empresa a la que perteneces:*"
            required
            class="w-full rounded-xl bg-gray-100 text-gray-800 px-4 py-3 outline-none focus:ring-2 focus:ring-[#9b2973]"
          />

          <input
            v-model="rol"
            type="text"
            placeholder="Rol que ocupas en la empresa:*"
            required
            class="w-full rounded-xl bg-gray-100 text-gray-800 px-4 py-3 outline-none focus:ring-2 focus:ring-[#9b2973]"
          />

          <p class="text-xs text-gray-500">
            Tus datos serán tratados según nuestra política de privacidad y no serán compartidos a terceros.
          </p>

          <div class="pt-2">
            <button
              type="submit"
              :disabled="loading"
              class="w-full md:w-auto bg-[#A00B64] hover:bg-[#7d1f5d] text-white font-semibold px-8 py-3 rounded-md transition-all"
            >
              {{ loading ? 'Registrando...' : 'Registrarme al evento' }}
            </button>
          </div>

          <p v-if="mensaje" :class="mensajeClase" class="pt-4 text-sm">{{ mensaje }}</p>
        </form>
      </div>
    </div>
  </section>
</template>

<script setup>
import { ref } from 'vue'
import { supabase } from '@/lib/supabase'

const nombres = ref('')
const whatsapp = ref('')
const email = ref('')
const empresa = ref('')
const rol = ref('')
const loading = ref(false)
const mensaje = ref('')
const mensajeClase = ref('text-green-600')

const handleSubmit = async () => {
  loading.value = true
  mensaje.value = ''

  try {
    // 1 Verificamos si ya está registrado por email o whatsapp
    const { data: existente, error: errorBuscar } = await supabase
      .from('inscripciones')
      .select('*')
      .or(`email.eq.${email.value},whatsapp.eq.${whatsapp.value}`)
      .maybeSingle()


    if (errorBuscar.code == "PGRST116") {
      mensaje.value = 'Este usuario ya estás registrado ✅'
      mensajeClase.value = 'text-blue-600'
      loading.value = false
      return
    }

    // 2️ Si no existe, lo registramos
    const { error: errorInsert } = await supabase.from('inscripciones').insert([
      {
        nombres: nombres.value,
        whatsapp: whatsapp.value,
        email: email.value,
        empresa: empresa.value,
        rol: rol.value,
      },
    ])

    if (errorInsert) throw errorInsert

    mensaje.value = 'Registro exitoso 🎉'
    mensajeClase.value = 'text-green-600'

    // limpiar campos
    nombres.value = ''
    whatsapp.value = ''
    email.value = ''
    empresa.value = ''
    rol.value = ''
  } catch (error) {
    mensaje.value = 'Ocurrió un error: ' + error.message
    mensajeClase.value = 'text-red-600'
  } finally {
    loading.value = false
  }
}
</script>
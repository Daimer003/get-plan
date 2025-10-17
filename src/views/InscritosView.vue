<template>
  <section class="w-full min-h-screen bg-[#f9fafb] py-16 px-6">
    <div class="max-w-6xl mx-auto bg-white rounded-2xl shadow-sm p-8 border border-gray-100">
      <div class="flex justify-between items-center mb-6">
        <h2 class="text-2xl font-extrabold text-gray-900">Registros de Inscripción</h2>
        <button
          @click="exportarExcel"
          class="bg-[#A00B64] hover:bg-[#7d1f5d] text-white font-semibold px-6 py-3 rounded-lg transition-all"
        >
          Descargar Excel
        </button>
      </div>

      <div v-if="loading" class="text-gray-600">Cargando registros...</div>

      <table v-else class="min-w-full border border-gray-200 text-sm text-gray-800">
        <thead class="bg-gray-100 text-gray-700 font-semibold">
          <tr>
            <th class="border px-3 py-2 text-left">#</th>
            <th class="border px-3 py-2 text-left">Nombres</th>
            <th class="border px-3 py-2 text-left">WhatsApp</th>
            <th class="border px-3 py-2 text-left">Email</th>
            <th class="border px-3 py-2 text-left">Empresa</th>
            <th class="border px-3 py-2 text-left">Rol</th>
            <th class="border px-3 py-2 text-left">Fecha Registro</th>
          </tr>
        </thead>
        <tbody>
          <tr v-for="(registro, i) in registros" :key="registro.id" class="hover:bg-gray-50">
            <td class="border px-3 py-2">{{ i + 1 }}</td>
            <td class="border px-3 py-2">{{ registro.nombres }}</td>
            <td class="border px-3 py-2">{{ registro.whatsapp }}</td>
            <td class="border px-3 py-2">{{ registro.email }}</td>
            <td class="border px-3 py-2">{{ registro.empresa }}</td>
            <td class="border px-3 py-2">{{ registro.rol }}</td>
            <td class="border px-3 py-2">{{ formatearFecha(registro.created_at) }}</td>
          </tr>
        </tbody>
      </table>
    </div>
  </section>
</template>

<script setup>
import { ref, onMounted } from 'vue'
import { supabase } from '../lib/supabase'
import * as XLSX from 'xlsx'

const registros = ref([])
const loading = ref(true)

onMounted(async () => {
  const { data, error } = await supabase.from('inscripciones').select('*').order('created_at', { ascending: false })
  if (error) {
    alert('Error al obtener registros: ' + error.message)
  } else {
    registros.value = data
  }
  loading.value = false
})

const exportarExcel = () => {
  if (!registros.value.length) {
    alert('No hay registros para exportar')
    return
  }

  const hoja = XLSX.utils.json_to_sheet(
    registros.value.map((r) => ({
      Nombres: r.nombres,
      Whatsapp: r.whatsapp,
      Email: r.email,
      Empresa: r.empresa,
      Rol: r.rol,
      'Fecha de registro': new Date(r.created_at).toLocaleString(),
    }))
  )

  const libro = XLSX.utils.book_new()
  XLSX.utils.book_append_sheet(libro, hoja, 'Inscritos')
  XLSX.writeFile(libro, 'inscritos_evento.xlsx')
}

const formatearFecha = (fecha) => {
  const d = new Date(fecha)
  return d.toLocaleString('es-CO', { dateStyle: 'short', timeStyle: 'short' })
}
</script>

<style scoped>
table {
  border-collapse: collapse;
}
</style>
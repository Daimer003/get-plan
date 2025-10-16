<template>
  <section class="w-full flex justify-center bg-[#f9fafb] py-20">
    <div
      class="w-full px-6 flex justify-center"
    >
      <div class="bg-white w-full max-w-[1439px] p-10 rounded-2xl shadow-sm border border-gray-100">
        <!-- Título -->
        <h2 class="text-2xl font-extrabold text-gray-900 mb-8 text-center">
          Inscríbete Grátis Por Tiempo Limitado
        </h2>

        <!-- Formulario -->
        <form class="space-y-6">
          <div>
            <input
              type="text"
              placeholder="Nombres y apellido:*"
              class="w-full rounded-xl bg-gray-100 text-gray-800 px-4 py-3 outline-none focus:ring-2 focus:ring-[#9b2973]"
            />
          </div>

          <div class="grid grid-cols-1 md:grid-cols-2 gap-4">
            <input
              type="text"
              placeholder="Whatsapp:*"
              class="w-full rounded-xl bg-gray-100 text-gray-800 px-4 py-3 outline-none focus:ring-2 focus:ring-[#9b2973]"
            />
            <input
              type="email"
              placeholder="Email:*"
              class="w-full rounded-xl bg-gray-100 text-gray-800 px-4 py-3 outline-none focus:ring-2 focus:ring-[#9b2973]"
            />
          </div>

          <div>
            <input
              type="text"
              placeholder="Empresa a la que perteneces:*"
              class="w-full rounded-xl bg-gray-100 text-gray-800 px-4 py-3 outline-none focus:ring-2 focus:ring-[#9b2973]"
            />
          </div>

          <div>
            <input
              type="text"
              placeholder="Rol que ocupas en la empresa:*"
              class="w-full rounded-xl bg-gray-100 text-gray-800 px-4 py-3 outline-none focus:ring-2 focus:ring-[#9b2973]"
            />
          </div>

          <p class="text-xs text-gray-500">
            Tus datos serán tratados según nuestra política de privacidad y no serán compartidos a terceros.
          </p>

          <!-- Botón -->
          <div class="pt-2">
            <button
              type="submit"
              class="w-full md:w-auto bg-[#9b2973] hover:bg-[#7d1f5d] text-white font-semibold px-8 py-3 rounded-md transition-all"
            >
              Registrarme al evento
            </button>
          </div>
        </form>
      </div>
    </div>
  </section>
</template>

<script setup>
</script>
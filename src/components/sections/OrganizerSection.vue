<template>
  <section class="w-full flex justify-center bg-[#0d0b1c] text-white py-20 relative overflow-hidden">
    <!-- Patrón diagonal sutil -->
    <div
      class="absolute inset-0 bg-[linear-gradient(135deg,rgba(255,255,255,0.04)_1px,transparent_1px)] [background-size:16px_16px]"
    ></div>

    <div class="relative z-10 w-full max-w-[1439px] px-6">
      <!-- Encabezado -->
      <div class="max-w-3xl mb-10">
        <div class="inline-block bg-[#9b2973] text-white text-xs font-semibold px-4 py-1 rounded-full mb-4 uppercase tracking-wide">
          Evento organizado por
        </div>

        <h2 class="text-3xl md:text-4xl font-extrabold mb-6">CHANGE AMERICAS</h2>
        <p class="text-gray-300 leading-relaxed">
          Líderes en transformación y estrategia organizacional, potenciando estrategias mediante
          tecnología innovadora, formación integral y gestión avanzada del talento humano. Change Americas
          es reconocida hoy como una de las organizaciones líderes en consultoría, tecnología y formación
          en transformación empresarial especializada, con operación en más de 20 países y 5 unidades de
          negocio con un propósito en común: transformar las organizaciones.
        </p>
      </div>

      <!-- Métricas -->
      <div
        class="grid grid-cols-1 md:grid-cols-3 gap-10 mt-16 text-center md:text-left"
      >
        <div>
          <p class="text-5xl font-extrabold">25</p>
          <p class="text-gray-300 mt-2 font-medium">Años De Experiencia</p>
        </div>

        <div>
          <p class="text-5xl font-extrabold">+1200</p>
          <p class="text-gray-300 mt-2 font-medium">Clientes Ayudados</p>
        </div>

        <div>
          <p class="text-5xl font-extrabold">20</p>
          <p class="text-gray-300 mt-2 font-medium">Países En LatAm</p>
        </div>
      </div>
    </div>
  </section>
</template>

<script setup>
</script>
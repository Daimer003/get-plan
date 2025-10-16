<template>
  <section class="w-full flex justify-center bg-[#faf9fb] text-[#0f0f0f] py-20">
    <div class="w-full max-w-[1439px] px-6 text-center">
      <!-- Texto superior -->
      <p class="text-gray-500 text-sm md:text-base mb-4">
        Hoy, las organizaciones que lideran el cambio son las que convierten la información en acción,
        la <span class="font-semibold">inteligencia en estrategia</span> y la colaboración en
        <span class="font-semibold">resultados reales.</span>
      </p>

      <h2
        class="text-4xl md:text-6xl font-bold text-[#7b1c5b] leading-tight mb-16"
      >
        El futuro no se planea como antes, ven y...
      </h2>

      <!-- Cards -->
      <div
        class="grid grid-cols-1 md:grid-cols-3 gap-8 justify-items-center"
      >
        <InfoCard
          icon-bg="bg-[#f4e8f1]"
          title="Aprende sobre IA sin humo"
          text="No necesitas ser experto en tecnología para adaptarte en la era de la IA, ven y conóce cómo sacarle partido para tu empresa y rol."
        />

        <InfoCard
          class="bg-gradient-to-b from-[#8b0466] to-[#2c0124] text-white"
          icon-bg="bg-[#ffffff1a]"
          title="Conoce la “nueva estrategia”"
          text="Co-crea con nuestros expertos una estrategia empresarial en vivo potenciada por Inteligencia Artificial. ¡100% Replicable a tu empresa!"
        />

        <InfoCard
          icon-bg="bg-[#f4e8f1]"
          title="Llévate una caja de herramientas"
          text="Tools para que generes un Plan Estratégico para tu negocio más ágil, participativo y explorativo en tendencias y buenas prácticas del mercado en tu sector."
        />
      </div>
    </div>
  </section>
</template>

<script setup>
import InfoCard from '../cards/InfoCard.vue';


</script>
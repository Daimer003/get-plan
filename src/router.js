// src/router.js
import { createRouter, createWebHistory } from "vue-router";

// Vistas
import Home from "./views/Landing.vue"
import InscritosView from "./views/InscritosView.vue"

const routes = [
  { path: "/", name: "Home", component: Home },
  { path: "/inscritos", name: "Inscritos", component: InscritosView },
]

const router = createRouter({
  history: createWebHistory(),
  routes,
})

export default router
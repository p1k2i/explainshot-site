import { createRouter, createWebHistory } from 'vue-router'
import Main from '../views/Main.vue'
import Help from '../views/Help.vue'
import Support from '../views/Support.vue'

const router = createRouter({
  history: createWebHistory(import.meta.env.BASE_URL),
  routes: [
    {
      path: '/',
      name: 'main',
      component: Main,
    },
    {
      path: '/help',
      name: 'help',
      component: Help,
    },
    {
      path: '/support',
      name: 'support',
      component: Support,
    },
  ],
  scrollBehavior(to, from, savedPosition) {
    if (savedPosition) {
      return savedPosition
    } else if (to.hash) {
      return {
        el: to.hash,
        behavior: 'smooth',
      }
    } else {
      return { top: 0 }
    }
  },
})

export default router

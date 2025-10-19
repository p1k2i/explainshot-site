import { createRouter, createWebHistory } from 'vue-router'
import MainPage from '../views/MainPage.vue'
import HelpPage from '../views/HelpPage.vue'
import SupportPage from '../views/SupportPage.vue'
import DownloadPage from '../views/DownloadPage.vue'

const router = createRouter({
  history: createWebHistory(import.meta.env.BASE_URL),
  routes: [
    {
      path: '/',
      name: 'main',
      component: MainPage,
    },
    {
      path: '/download',
      name: 'download',
      component: DownloadPage,
    },
    {
      path: '/help',
      name: 'help',
      component: HelpPage,
    },
    {
      path: '/support',
      name: 'support',
      component: SupportPage,
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

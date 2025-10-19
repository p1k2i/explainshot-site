import { createApp } from 'vue'
import { createPinia } from 'pinia'
import App from './App.vue'
import router from './router'

// AOS (Animate On Scroll) imports
import AOS from 'aos'
import 'aos/dist/aos.css'

// FontAwesome imports
import '@fortawesome/fontawesome-free/css/all.css'

// Global styles
import './assets/styles.css'

const app = createApp(App)
const pinia = createPinia()

app.use(pinia)
app.use(router)

// Initialize AOS
AOS.init({
  duration: 800,
  easing: 'ease-out-cubic',
  once: true,
  offset: 50,
})

app.mount('#app')

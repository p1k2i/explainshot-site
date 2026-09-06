import { createApp } from 'vue'
import { createPinia } from 'pinia'
import App from './App.vue'
import router from './router'

// AOS (Animate On Scroll) styles. AOS itself is initialized in App.vue
// once the DOM is mounted — initializing before mount finds no elements
// and can leave a hard-loaded page stuck at opacity:0.
import 'aos/dist/aos.css'

// FontAwesome imports
import '@fortawesome/fontawesome-free/css/all.css'

// Global styles
import './assets/styles.css'

const app = createApp(App)
const pinia = createPinia()

app.use(pinia)
app.use(router)

app.mount('#app')

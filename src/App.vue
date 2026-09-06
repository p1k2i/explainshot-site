<script setup lang="ts">
import { onMounted, watch, nextTick } from 'vue'
import { RouterView, useRoute } from 'vue-router'
import AOS from 'aos'
import NavBar from './components/NavBar.vue'
import { useThemeStore } from './stores/theme'

const themeStore = useThemeStore()
const route = useRoute()

onMounted(() => {
  // Initialize theme on app start
  themeStore.initTheme()

  // Initialize AOS after the DOM is mounted so it can see the elements
  // Vue just rendered. Initializing before mount (in main.ts) finds nothing,
  // which left deep-linked/refreshed pages stuck at opacity:0.
  AOS.init({
    duration: 450,
    easing: 'ease-out-cubic',
    once: true,
    offset: 50,
  })
})

// Re-scan for freshly mounted elements after each client-side navigation;
// without this, AOS never animates the new page and its content stays hidden.
watch(
  () => route.path,
  () => {
    nextTick(() => AOS.refreshHard())
  },
)
</script>

<template>
  <div id="app">
    <NavBar />
    <main class="main-content">
      <RouterView />
    </main>
  </div>
</template>

<style>
#app {
  min-height: 100vh;
  display: flex;
  flex-direction: column;
}

.main-content {
  flex: 1;
  padding-top: 70px; /* Account for fixed navbar */
}

/* Smooth transitions for theme changes */
* {
  transition:
    background-color 0.3s ease,
    color 0.3s ease,
    border-color 0.3s ease;
}

/* Focus styles for accessibility */
*:focus {
  outline: 2px solid var(--color-primary);
  outline-offset: 2px;
}

*:focus:not(:focus-visible) {
  outline: none;
}

/* Selection styles */
::selection {
  background-color: var(--color-primary-light);
  color: var(--color-text);
}
</style>

<template>
  <header class="navbar" :class="{ 'navbar-scrolled': isScrolled }">
    <nav class="nav-container">
      <div class="nav-brand">
        <RouterLink to="/" class="brand-link">
          <span class="brand-text">ExplainShot</span>
        </RouterLink>
      </div>

      <div class="nav-menu" :class="{ 'nav-menu-open': isMenuOpen }">
        <RouterLink to="/" class="nav-link" @click="closeMenu">Main</RouterLink>
        <RouterLink to="/download" class="nav-link" @click="closeMenu">Download</RouterLink>
        <RouterLink to="/help" class="nav-link" @click="closeMenu">Help</RouterLink>
        <RouterLink to="/support" class="nav-link" @click="closeMenu">Support</RouterLink>

        <button
          class="theme-toggle"
          @click="themeStore.toggleTheme()"
          :title="themeStore.isDark ? 'Switch to light mode' : 'Switch to dark mode'"
        >
          <span class="theme-icon">{{ themeStore.isDark ? '☀️' : '🌙' }}</span>
        </button>
      </div>

      <button
        class="nav-toggle"
        @click="toggleMenu"
        :aria-expanded="isMenuOpen"
        aria-label="Toggle navigation menu"
      >
        <span class="nav-toggle-bar"></span>
        <span class="nav-toggle-bar"></span>
        <span class="nav-toggle-bar"></span>
      </button>
    </nav>
  </header>
</template>

<script setup lang="ts">
import { ref, onMounted, onUnmounted } from 'vue'
import { RouterLink } from 'vue-router'
import { useThemeStore } from '../stores/theme'

const themeStore = useThemeStore()
const isScrolled = ref(false)
const isMenuOpen = ref(false)

const handleScroll = () => {
  isScrolled.value = window.scrollY > 50
}

const toggleMenu = () => {
  isMenuOpen.value = !isMenuOpen.value
}

const closeMenu = () => {
  isMenuOpen.value = false
}

onMounted(() => {
  window.addEventListener('scroll', handleScroll)
})

onUnmounted(() => {
  window.removeEventListener('scroll', handleScroll)
})
</script>

<style scoped>
.navbar {
  position: fixed;
  top: 0;
  left: 0;
  right: 0;
  background: rgba(var(--color-background-rgb), 0.95);
  backdrop-filter: blur(10px);
  border-bottom: 1px solid var(--color-border);
  z-index: 1000;
  transition: all 0.3s ease;
}

.navbar-scrolled {
  background: rgba(var(--color-background-rgb), 0.98);
  box-shadow: 0 2px 20px rgba(0, 0, 0, 0.1);
}

.nav-container {
  max-width: 1200px;
  margin: 0 auto;
  padding: 0 2rem;
  display: flex;
  align-items: center;
  justify-content: space-between;
  height: 70px;
}

.nav-brand {
  flex-shrink: 0;
}

.brand-link {
  text-decoration: none;
  color: var(--color-heading);
  font-weight: 700;
  font-size: 1.5rem;
  transition: color 0.3s ease;
}

.brand-link:hover {
  color: var(--color-primary);
}

.brand-text {
  background: linear-gradient(135deg, var(--color-primary), var(--color-accent));
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;
  background-clip: text;
}

.nav-menu {
  display: flex;
  align-items: center;
  gap: 2rem;
}

.nav-link {
  text-decoration: none;
  color: var(--color-text);
  font-weight: 500;
  padding: 0.5rem 1rem;
  border-radius: 6px;
  transition: all 0.3s ease;
  position: relative;
}

.nav-link:hover {
  color: var(--color-primary);
  background: var(--color-background-soft);
}

.nav-link.router-link-active {
  color: var(--color-primary);
  background: var(--color-background-soft);
}

.theme-toggle {
  background: var(--color-background-soft);
  border: 1px solid var(--color-border);
  border-radius: 8px;
  padding: 0.5rem;
  cursor: pointer;
  transition: all 0.3s ease;
  display: flex;
  align-items: center;
  justify-content: center;
  min-width: 40px;
  height: 40px;
}

.theme-toggle:hover {
  background: var(--color-border);
  transform: scale(1.05);
}

.theme-icon {
  font-size: 1.125rem;
  transition: transform 0.3s ease;
}

.theme-toggle:hover .theme-icon {
  transform: rotate(15deg);
}

.nav-toggle {
  display: none;
  flex-direction: column;
  background: none;
  border: none;
  cursor: pointer;
  padding: 0.25rem;
  gap: 0.25rem;
}

.nav-toggle-bar {
  width: 25px;
  height: 3px;
  background: var(--color-text);
  border-radius: 2px;
  transition: all 0.3s ease;
  transform-origin: center;
}

.nav-toggle[aria-expanded='true'] .nav-toggle-bar:nth-child(1) {
  transform: rotate(45deg) translate(6px, 6px);
}

.nav-toggle[aria-expanded='true'] .nav-toggle-bar:nth-child(2) {
  opacity: 0;
}

.nav-toggle[aria-expanded='true'] .nav-toggle-bar:nth-child(3) {
  transform: rotate(-45deg) translate(6px, -6px);
}

/* Mobile Styles */
@media (max-width: 768px) {
  .nav-container {
    padding: 0 1rem;
  }

  .nav-toggle {
    display: flex;
  }

  .nav-menu {
    position: absolute;
    top: 100%;
    left: 0;
    right: 0;
    background: var(--color-background);
    border-bottom: 1px solid var(--color-border);
    flex-direction: column;
    padding: 1rem;
    gap: 0.5rem;
    transform: translateY(-100%);
    opacity: 0;
    visibility: hidden;
    transition: all 0.3s ease;
  }

  .nav-menu-open {
    transform: translateY(0);
    opacity: 1;
    visibility: visible;
  }

  .nav-link {
    width: 100%;
    text-align: center;
    padding: 0.75rem;
  }

  .theme-toggle {
    width: 100%;
    justify-content: center;
  }
}

/* Extra small screens */
@media (max-width: 480px) {
  .nav-container {
    height: 60px;
  }

  .brand-link {
    font-size: 1.25rem;
  }
}
</style>

import { defineStore } from 'pinia'
import { ref, watch } from 'vue'

export const useThemeStore = defineStore('theme', () => {
  const isDark = ref(false)
  const theme = ref<'light' | 'dark'>('light')

  // Initialize theme from localStorage or system preference
  const initTheme = () => {
    const stored = localStorage.getItem('explainshot-theme')
    if (stored && (stored === 'light' || stored === 'dark')) {
      theme.value = stored
      isDark.value = stored === 'dark'
    } else {
      // Check system preference
      const prefersDark = window.matchMedia('(prefers-color-scheme: dark)').matches
      theme.value = prefersDark ? 'dark' : 'light'
      isDark.value = prefersDark
    }
    applyTheme()
  }

  // Apply theme to document
  const applyTheme = () => {
    if (isDark.value) {
      document.documentElement.classList.add('dark')
      document.documentElement.classList.remove('light')
    } else {
      document.documentElement.classList.add('light')
      document.documentElement.classList.remove('dark')
    }
  }

  // Toggle theme
  const toggleTheme = () => {
    isDark.value = !isDark.value
    theme.value = isDark.value ? 'dark' : 'light'
    applyTheme()
  }

  // Watch theme changes and save to localStorage
  watch(theme, (newTheme) => {
    localStorage.setItem('explainshot-theme', newTheme)
  })

  return {
    isDark,
    theme,
    initTheme,
    toggleTheme,
    applyTheme
  }
})

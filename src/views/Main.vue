<template>
  <div class="main-page">
    <section class="hero" data-aos="fade-up">
      <div class="container">
        <h1 class="hero-title">ExplainShot</h1>
        <p class="hero-subtitle">
          A powerful screenshot annotation tool with advanced explanation features
        </p>
        <div class="hero-buttons">
          <a href="#features" class="btn btn-primary">Learn More</a>
          <a href="https://github.com/your-username/explain-shot" class="btn btn-secondary" target="_blank">
            View on GitHub
          </a>
        </div>
      </div>
    </section>

    <section id="features" class="features" data-aos="fade-up" data-aos-delay="200">
      <div class="container">
        <h2>Key Features</h2>
        <div class="features-grid">
          <div class="feature-card" data-aos="fade-up" data-aos-delay="300">
            <div class="feature-icon">📸</div>
            <h3>Smart Screenshots</h3>
            <p>Capture screenshots with intelligent region detection and automatic optimization.</p>
          </div>
          <div class="feature-card" data-aos="fade-up" data-aos-delay="400">
            <div class="feature-icon">✏️</div>
            <h3>Rich Annotations</h3>
            <p>Add arrows, text, shapes, and highlights with professional-grade annotation tools.</p>
          </div>
          <div class="feature-card" data-aos="fade-up" data-aos-delay="500">
            <div class="feature-icon">⚡</div>
            <h3>Lightning Fast</h3>
            <p>Built with performance in mind using modern MVC architecture and event-driven design.</p>
          </div>
          <div class="feature-card" data-aos="fade-up" data-aos-delay="600">
            <div class="feature-icon">🎨</div>
            <h3>Customizable</h3>
            <p>Extensive theming options and configurable hotkeys to match your workflow.</p>
          </div>
        </div>
      </div>
    </section>

    <section class="screenshot-section" data-aos="fade-up" data-aos-delay="700">
      <div class="container">
        <h2>See It In Action</h2>
        <div class="screenshot-placeholder">
          <div class="screenshot-mockup">
            <p>Screenshot/Demo will be placed here</p>
          </div>
        </div>
      </div>
    </section>

    <section class="architecture" data-aos="fade-up" data-aos-delay="800">
      <div class="container">
        <h2>Modern Architecture</h2>
        <p class="architecture-description">
          ExplainShot is built with a clean MVC (Model-View-Controller) pattern and event-driven architecture,
          ensuring maintainable code and excellent performance. The modular design allows for easy extensibility
          and customization.
        </p>
        <div class="architecture-features">
          <div class="arch-item">📦 Modular Design</div>
          <div class="arch-item">🔄 Event-Driven</div>
          <div class="arch-item">🏗️ MVC Pattern</div>
          <div class="arch-item">🔧 Extensible</div>
        </div>
      </div>
    </section>

    <section class="download-section" data-aos="fade-up" data-aos-delay="900">
      <div class="container">
        <h2>Get Started</h2>
        <div class="download-buttons">
          <a href="https://github.com/your-username/explain-shot/releases" class="btn btn-primary btn-large" target="_blank">
            Download Latest Release
          </a>
          <a href="https://github.com/your-username/explain-shot" class="btn btn-secondary btn-large" target="_blank">
            View Repository
          </a>
        </div>
      </div>
    </section>
  </div>
</template>

<script setup lang="ts">
import { onMounted } from 'vue'

onMounted(() => {
  // AOS will be initialized in main.ts
})
</script>

<style scoped>
.main-page {
  min-height: 100vh;
}

.container {
  max-width: 1200px;
  margin: 0 auto;
  padding: 0 2rem;
}

/* Hero Section */
.hero {
  padding: 6rem 0 4rem;
  text-align: center;
  background: linear-gradient(135deg, var(--color-background) 0%, var(--color-background-soft) 100%);
}

.hero-title {
  font-size: 3.5rem;
  font-weight: 700;
  margin-bottom: 1rem;
  background: linear-gradient(135deg, var(--color-primary), var(--color-accent));
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;
  background-clip: text;
}

.hero-subtitle {
  font-size: 1.25rem;
  color: var(--color-text-muted);
  margin-bottom: 2rem;
  max-width: 600px;
  margin-left: auto;
  margin-right: auto;
}

.hero-buttons {
  display: flex;
  gap: 1rem;
  justify-content: center;
  flex-wrap: wrap;
}

/* Features Section */
.features {
  padding: 4rem 0;
}

.features h2 {
  text-align: center;
  font-size: 2.5rem;
  margin-bottom: 3rem;
  color: var(--color-heading);
}

.features-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
  gap: 2rem;
}

.feature-card {
  background: var(--color-background-soft);
  padding: 2rem;
  border-radius: 12px;
  text-align: center;
  border: 1px solid var(--color-border);
  transition: transform 0.3s ease, box-shadow 0.3s ease;
}

.feature-card:hover {
  transform: translateY(-5px);
  box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
}

.feature-icon {
  font-size: 3rem;
  margin-bottom: 1rem;
}

.feature-card h3 {
  font-size: 1.5rem;
  margin-bottom: 1rem;
  color: var(--color-heading);
}

.feature-card p {
  color: var(--color-text-muted);
  line-height: 1.6;
}

/* Screenshot Section */
.screenshot-section {
  padding: 4rem 0;
  background: var(--color-background-soft);
}

.screenshot-section h2 {
  text-align: center;
  font-size: 2.5rem;
  margin-bottom: 2rem;
  color: var(--color-heading);
}

.screenshot-placeholder {
  display: flex;
  justify-content: center;
}

.screenshot-mockup {
  width: 100%;
  max-width: 800px;
  height: 400px;
  background: var(--color-background);
  border: 2px dashed var(--color-border);
  border-radius: 8px;
  display: flex;
  align-items: center;
  justify-content: center;
  color: var(--color-text-muted);
  font-size: 1.125rem;
}

/* Architecture Section */
.architecture {
  padding: 4rem 0;
}

.architecture h2 {
  text-align: center;
  font-size: 2.5rem;
  margin-bottom: 2rem;
  color: var(--color-heading);
}

.architecture-description {
  text-align: center;
  font-size: 1.125rem;
  color: var(--color-text-muted);
  max-width: 800px;
  margin: 0 auto 2rem;
  line-height: 1.6;
}

.architecture-features {
  display: flex;
  justify-content: center;
  gap: 2rem;
  flex-wrap: wrap;
}

.arch-item {
  padding: 0.75rem 1.5rem;
  background: var(--color-background-soft);
  border: 1px solid var(--color-border);
  border-radius: 25px;
  font-weight: 500;
  color: var(--color-text);
}

/* Download Section */
.download-section {
  padding: 4rem 0;
  text-align: center;
  background: var(--color-background-soft);
}

.download-section h2 {
  font-size: 2.5rem;
  margin-bottom: 2rem;
  color: var(--color-heading);
}

.download-buttons {
  display: flex;
  gap: 1rem;
  justify-content: center;
  flex-wrap: wrap;
}

/* Buttons */
.btn {
  display: inline-block;
  padding: 0.75rem 1.5rem;
  border-radius: 6px;
  text-decoration: none;
  font-weight: 500;
  transition: all 0.3s ease;
  border: 2px solid transparent;
}

.btn-primary {
  background: var(--color-primary);
  color: white;
}

.btn-primary:hover {
  background: var(--color-primary-dark);
  transform: translateY(-2px);
}

.btn-secondary {
  background: transparent;
  color: var(--color-primary);
  border-color: var(--color-primary);
}

.btn-secondary:hover {
  background: var(--color-primary);
  color: white;
  transform: translateY(-2px);
}

.btn-large {
  padding: 1rem 2rem;
  font-size: 1.125rem;
}

/* Responsive */
@media (max-width: 768px) {
  .hero-title {
    font-size: 2.5rem;
  }

  .hero-buttons {
    flex-direction: column;
    align-items: center;
  }

  .features-grid {
    grid-template-columns: 1fr;
  }

  .architecture-features {
    flex-direction: column;
    align-items: center;
  }

  .download-buttons {
    flex-direction: column;
    align-items: center;
  }
}
</style>

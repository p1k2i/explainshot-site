<template>
  <div class="help-page">
    <div class="container">
      <header class="page-header" data-aos="fade-up">
        <h1>Help & Documentation</h1>
        <p>Everything you need to know to get started with ExplainShot</p>
      </header>

      <section class="installation" data-aos="fade-up" data-aos-delay="200">
        <h2>🚀 Installation</h2>

        <div class="install-section">
          <h3>Production Installation</h3>
          <div class="code-block">
            <h4>Windows</h4>
            <pre><code># Download the latest release from GitHub
# Extract to your preferred directory
# Run the ExplainShot.exe file</code></pre>
          </div>

          <div class="code-block">
            <h4>macOS</h4>
            <pre><code># Download the .dmg file from releases
# Drag ExplainShot to Applications folder
# Launch from Applications</code></pre>
          </div>

          <div class="code-block">
            <h4>Linux</h4>
            <pre><code># Download the .AppImage or .deb package
# Make executable: chmod +x ExplainShot.AppImage
# Run: ./ExplainShot.AppImage</code></pre>
          </div>
        </div>

        <div class="install-section">
          <h3>Development Setup</h3>
          <div class="code-block">
            <pre><code># Clone the repository
git clone https://github.com/your-username/explain-shot.git
cd explain-shot

# Install dependencies
npm install

# Run in development mode
npm run dev

# Build for production
npm run build</code></pre>
          </div>
        </div>
      </section>

      <section class="configuration" data-aos="fade-up" data-aos-delay="400">
        <h2>⚙️ Configuration</h2>

        <div class="config-section">
          <h3>Basic Settings</h3>
          <div class="setting-item">
            <h4>Auto-start</h4>
            <p>Configure ExplainShot to start automatically when your system boots.</p>
            <code>Settings → General → Launch at startup</code>
          </div>

          <div class="setting-item">
            <h4>Default Save Location</h4>
            <p>Set your preferred directory for saving screenshots.</p>
            <code>Settings → Files → Default save location</code>
          </div>

          <div class="setting-item">
            <h4>Image Quality</h4>
            <p>Adjust compression and quality settings for your screenshots.</p>
            <code>Settings → Image → Quality settings</code>
          </div>
        </div>

        <div class="config-section">
          <h3>Hotkeys</h3>
          <div class="hotkey-grid">
            <div class="hotkey-item">
              <kbd>Ctrl</kbd> + <kbd>Shift</kbd> + <kbd>S</kbd>
              <span>Capture selected area</span>
            </div>
            <div class="hotkey-item">
              <kbd>Ctrl</kbd> + <kbd>Shift</kbd> + <kbd>F</kbd>
              <span>Capture full screen</span>
            </div>
            <div class="hotkey-item">
              <kbd>Ctrl</kbd> + <kbd>Shift</kbd> + <kbd>W</kbd>
              <span>Capture active window</span>
            </div>
            <div class="hotkey-item">
              <kbd>Ctrl</kbd> + <kbd>Shift</kbd> + <kbd>A</kbd>
              <span>Open annotation editor</span>
            </div>
          </div>
        </div>
      </section>

      <section class="usage" data-aos="fade-up" data-aos-delay="600">
        <h2>📖 Usage Instructions</h2>

        <div class="usage-steps">
          <div class="step">
            <div class="step-number">1</div>
            <div class="step-content">
              <h3>Launch ExplainShot</h3>
              <p>
                Start the application and it will run in your system tray. The icon will appear in
                the notification area.
              </p>
            </div>
          </div>

          <div class="step">
            <div class="step-number">2</div>
            <div class="step-content">
              <h3>Take a Screenshot</h3>
              <p>
                Use the hotkeys or right-click the tray icon to capture your screen. Choose from
                area, full screen, or window capture.
              </p>
            </div>
          </div>

          <div class="step">
            <div class="step-number">3</div>
            <div class="step-content">
              <h3>Annotate & Explain</h3>
              <p>
                Use the built-in editor to add arrows, text, shapes, highlights, and explanations to
                your screenshot.
              </p>
            </div>
          </div>

          <div class="step">
            <div class="step-number">4</div>
            <div class="step-content">
              <h3>Save or Share</h3>
              <p>
                Save to your preferred location or copy to clipboard for immediate sharing in chats,
                emails, or documents.
              </p>
            </div>
          </div>
        </div>
      </section>

      <section class="faq" data-aos="fade-up" data-aos-delay="800">
        <h2>❓ Frequently Asked Questions</h2>

        <div class="faq-item">
          <h3>How do I change the default hotkeys?</h3>
          <p>
            Go to Settings → Hotkeys and click on any hotkey to customize it. Make sure your new
            combination doesn't conflict with other applications.
          </p>
        </div>

        <div class="faq-item">
          <h3>Can I use ExplainShot on multiple monitors?</h3>
          <p>
            Yes! ExplainShot automatically detects all connected displays. When capturing, you can
            select which monitor to capture from.
          </p>
        </div>

        <div class="faq-item">
          <h3>What image formats are supported?</h3>
          <p>
            ExplainShot supports PNG, JPEG, WebP, and BMP formats. PNG is recommended for
            screenshots with text and annotations.
          </p>
        </div>

        <div class="faq-item">
          <h3>Is there a portable version available?</h3>
          <p>
            Yes, the portable version doesn't require installation and stores all settings in the
            application folder.
          </p>
        </div>

        <div class="faq-item">
          <h3>How do I report bugs or request features?</h3>
          <p>
            Please visit our
            <a href="https://github.com/your-username/explain-shot/issues" target="_blank"
              >GitHub Issues</a
            >
            page to report bugs or request new features.
          </p>
        </div>
      </section>

      <section class="troubleshooting" data-aos="fade-up" data-aos-delay="1000">
        <h2>🔧 Troubleshooting</h2>

        <div class="trouble-item">
          <h3>Screenshots appear blurry or pixelated</h3>
          <p>
            Check your display scaling settings and ensure ExplainShot is set to high DPI awareness
            in the compatibility settings.
          </p>
        </div>

        <div class="trouble-item">
          <h3>Hotkeys not working</h3>
          <p>
            Verify that no other applications are using the same key combinations. Try running
            ExplainShot as administrator if the issue persists.
          </p>
        </div>

        <div class="trouble-item">
          <h3>Application won't start</h3>
          <p>
            Check if your antivirus is blocking the application. Add ExplainShot to your antivirus
            whitelist if necessary.
          </p>
        </div>

        <div class="trouble-item">
          <h3>Can't save screenshots</h3>
          <p>
            Ensure you have write permissions to your chosen save directory. Try changing the
            default save location in settings.
          </p>
        </div>
      </section>
    </div>
  </div>
</template>

<script setup lang="ts">
// Help page logic can be added here if needed
</script>

<style scoped>
.help-page {
  min-height: 100vh;
  padding: 2rem 0;
}

.container {
  max-width: 1000px;
  margin: 0 auto;
  padding: 0 2rem;
}

.page-header {
  text-align: center;
  margin-bottom: 3rem;
}

.page-header h1 {
  font-size: 3rem;
  color: var(--color-heading);
  margin-bottom: 1rem;
}

.page-header p {
  font-size: 1.25rem;
  color: var(--color-text-muted);
}

section {
  margin-bottom: 4rem;
}

section h2 {
  font-size: 2rem;
  color: var(--color-heading);
  margin-bottom: 2rem;
  padding-bottom: 0.5rem;
  border-bottom: 2px solid var(--color-border);
}

/* Installation Section */
.install-section {
  margin-bottom: 2rem;
}

.install-section h3 {
  font-size: 1.5rem;
  color: var(--color-heading);
  margin-bottom: 1rem;
}

.code-block {
  background: var(--color-background-soft);
  border: 1px solid var(--color-border);
  border-radius: 8px;
  padding: 1.5rem;
  margin-bottom: 1rem;
}

.code-block h4 {
  color: var(--color-primary);
  margin-bottom: 0.5rem;
  font-size: 1.125rem;
}

.code-block pre {
  margin: 0;
  font-family: 'Monaco', 'Consolas', 'Courier New', monospace;
  font-size: 0.9rem;
  line-height: 1.5;
  overflow-x: auto;
}

.code-block code {
  color: var(--color-text);
}

/* Configuration Section */
.config-section {
  margin-bottom: 2rem;
}

.config-section h3 {
  font-size: 1.5rem;
  color: var(--color-heading);
  margin-bottom: 1.5rem;
}

.setting-item {
  background: var(--color-background-soft);
  padding: 1.5rem;
  border-radius: 8px;
  border: 1px solid var(--color-border);
  margin-bottom: 1rem;
}

.setting-item h4 {
  color: var(--color-primary);
  margin-bottom: 0.5rem;
  font-size: 1.125rem;
}

.setting-item p {
  color: var(--color-text-muted);
  margin-bottom: 0.5rem;
  line-height: 1.6;
}

.setting-item code {
  background: var(--color-background);
  padding: 0.25rem 0.5rem;
  border-radius: 4px;
  font-family: 'Monaco', 'Consolas', 'Courier New', monospace;
  font-size: 0.9rem;
  color: var(--color-text);
  border: 1px solid var(--color-border);
}

/* Hotkeys */
.hotkey-grid {
  display: grid;
  gap: 1rem;
}

.hotkey-item {
  display: flex;
  align-items: center;
  justify-content: space-between;
  background: var(--color-background-soft);
  padding: 1rem;
  border-radius: 8px;
  border: 1px solid var(--color-border);
}

.hotkey-item kbd {
  background: var(--color-background);
  border: 1px solid var(--color-border);
  border-radius: 4px;
  padding: 0.25rem 0.5rem;
  font-size: 0.875rem;
  font-family: inherit;
  margin: 0 0.25rem;
  box-shadow: 0 1px 3px rgba(0, 0, 0, 0.1);
}

.hotkey-item span {
  color: var(--color-text-muted);
  font-weight: 500;
}

/* Usage Steps */
.usage-steps {
  display: flex;
  flex-direction: column;
  gap: 1.5rem;
}

.step {
  display: flex;
  align-items: flex-start;
  gap: 1.5rem;
  background: var(--color-background-soft);
  padding: 1.5rem;
  border-radius: 12px;
  border: 1px solid var(--color-border);
}

.step-number {
  background: var(--color-primary);
  color: white;
  width: 40px;
  height: 40px;
  border-radius: 50%;
  display: flex;
  align-items: center;
  justify-content: center;
  font-weight: bold;
  font-size: 1.25rem;
  flex-shrink: 0;
}

.step-content h3 {
  color: var(--color-heading);
  margin-bottom: 0.5rem;
  font-size: 1.25rem;
}

.step-content p {
  color: var(--color-text-muted);
  line-height: 1.6;
}

/* FAQ */
.faq-item {
  background: var(--color-background-soft);
  padding: 1.5rem;
  border-radius: 8px;
  border: 1px solid var(--color-border);
  margin-bottom: 1rem;
}

.faq-item h3 {
  color: var(--color-heading);
  margin-bottom: 0.75rem;
  font-size: 1.125rem;
}

.faq-item p {
  color: var(--color-text-muted);
  line-height: 1.6;
}

.faq-item a {
  color: var(--color-primary);
  text-decoration: none;
}

.faq-item a:hover {
  text-decoration: underline;
}

/* Troubleshooting */
.trouble-item {
  background: var(--color-background-soft);
  padding: 1.5rem;
  border-radius: 8px;
  border: 1px solid var(--color-border);
  margin-bottom: 1rem;
}

.trouble-item h3 {
  color: var(--color-primary);
  margin-bottom: 0.75rem;
  font-size: 1.125rem;
}

.trouble-item p {
  color: var(--color-text-muted);
  line-height: 1.6;
}

/* Responsive */
@media (max-width: 768px) {
  .page-header h1 {
    font-size: 2rem;
  }

  .step {
    flex-direction: column;
    text-align: center;
  }

  .step-number {
    margin: 0 auto;
  }

  .hotkey-item {
    flex-direction: column;
    gap: 0.5rem;
    text-align: center;
  }
}
</style>

<template>
  <div class="help-page">
    <div class="container">
      <header class="page-header" data-aos="fade-up">
        <h1>Help & Documentation</h1>
        <p>Everything you need to know to get started with ExplainShot</p>
      </header>

      <section class="installation" data-aos="fade-up" data-aos-delay="200">
        <h2><i class="fas fa-rocket"></i> Installation</h2>

        <div class="install-section">
          <h3>Production Installation</h3>
          <div class="code-block">
            <h4>Windows</h4>
            <pre><code># Download the latest release from GitHub
# Extract to your preferred directory
# Run the ExplainShot.exe file</code></pre>
          </div>

          <div class="code-block">
            <h4>macOS &amp; Linux</h4>
            <pre><code># Packaged builds are coming in a future release.
# For now, run from source with Python 3.12
# (see Development Setup below).</code></pre>
          </div>
        </div>

        <div class="install-section">
          <h3>Development Setup</h3>
          <p class="install-note">
            ExplainShot is a Python 3.12 desktop app built with PyQt6. To run it from source:
          </p>
          <div class="code-block">
            <pre><code># Clone the repository
git clone https://github.com/p1k2i/explain-shot.git
cd explain-shot

# Create and activate a virtual environment (Python 3.12)
python -m venv venv
venv\Scripts\activate

# Install dependencies
pip install -r requirements.txt

# Run the app
python main.py

# Build a portable executable with PyInstaller
.\build.ps1 -Full</code></pre>
          </div>
        </div>
      </section>

      <section class="configuration" data-aos="fade-up" data-aos-delay="400">
        <h2><i class="fas fa-cog"></i> Configuration</h2>

        <div class="config-section">
          <h3>Basic Settings</h3>
          <div class="setting-item">
            <h4>AI Provider</h4>
            <p>
              Point ExplainShot at any OpenAI-compatible endpoint, pick a vision-capable model, and
              use "Test connection" to check it.
            </p>
            <code>Settings → AI provider → Base URL / API key / Model</code>
          </div>

          <div class="setting-item">
            <h4>Save Location &amp; Format</h4>
            <p>Choose where screenshots are stored and whether they're saved as PNG or JPEG.</p>
            <code>Settings → Screenshots → Save folder / Image format</code>
          </div>

          <div class="setting-item">
            <h4>Appearance</h4>
            <p>
              Switch between dark and light themes, set an accent colour, and adjust the gallery
              thumbnail size.
            </p>
            <code>Settings → Appearance → Theme / Accent colour</code>
          </div>

          <div class="setting-item">
            <h4>Auto-start</h4>
            <p>Launch ExplainShot automatically when Windows starts.</p>
            <code>Settings → Appearance → Launch when Windows starts</code>
          </div>
        </div>

        <div class="config-section">
            <h3>Customizable Hotkeys</h3>
          <div class="hotkey-grid">
            <div class="hotkey-item">
              <kbd>Ctrl</kbd> + <kbd>Shift</kbd> + <kbd>S</kbd>
              <span>Capture a region</span>
            </div>
            <div class="hotkey-item">
              <kbd>Ctrl</kbd> + <kbd>Shift</kbd> + <kbd>G</kbd>
              <span>Open / toggle the gallery</span>
            </div>
            <div class="hotkey-item">
              <kbd>Ctrl</kbd> + <kbd>Shift</kbd> + <kbd>P</kbd>
              <span>Open settings</span>
            </div>
          </div>
          <p class="hotkey-note">
            All three are rebindable in <code>Settings → Hotkeys</code> and are registered globally on
            Windows.
          </p>
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
                The app runs in your system tray. Right-click the icon (or press a hotkey) for
                capture, gallery, and settings; double-click to jump straight to the gallery.
              </p>
            </div>
          </div>

          <div class="step">
            <div class="step-number">2</div>
            <div class="step-content">
              <h3>Capture &amp; Annotate</h3>
              <p>
                Press <kbd>Ctrl</kbd>+<kbd>Shift</kbd>+<kbd>S</kbd> and drag to select a region
                across your displays. Mark it up with arrows, text, rectangles, or blur, then choose
                "Save &amp; open".
              </p>
            </div>
          </div>

          <div class="step">
            <div class="step-number">3</div>
            <div class="step-content">
              <h3>Chat With the AI</h3>
              <p>
                Your screenshot lands in the gallery. Pick a prompt preset or type your own question
                — a vision-capable model explains what's on screen and answers your follow-ups.
              </p>
            </div>
          </div>

          <div class="step">
            <div class="step-number">4</div>
            <div class="step-content">
              <h3>Keep the Thread</h3>
              <p>
                Every conversation is saved per screenshot. Edit a message to branch the chat,
                regenerate replies, or compact long conversations to stay within the model's context.
              </p>
            </div>
          </div>
        </div>
      </section>

      <section class="faq" data-aos="fade-up" data-aos-delay="800">
        <h2><i class="fas fa-circle-question"></i> Frequently Asked Questions</h2>

        <div class="faq-item">
          <h3>Which AI models can I use?</h3>
          <p>
            Any vision-capable model served over an OpenAI-compatible API — for example
            <code>llama3.2-vision</code> or <code>qwen2.5-vl</code> through Ollama or LM Studio, or
            <code>gpt-4o</code> through the OpenAI API. Configure it in Settings → AI provider and use
            "Fetch models" to list what your endpoint offers.
          </p>
        </div>

        <div class="faq-item">
          <h3>Does my data leave my computer?</h3>
          <p>
            Screenshots and prompts are only sent to the endpoint you configure. Point ExplainShot at
            a local model (Ollama or LM Studio) to keep everything on your machine; if you use a
            cloud endpoint such as OpenAI, your requests go there instead. Screenshots, chat history,
            and settings are always stored locally.
          </p>
        </div>

        <div class="faq-item">
          <h3>How do I change the default hotkeys?</h3>
          <p>
            Go to Settings → Hotkeys and record a new combination for capture, gallery, or settings.
            Make sure it doesn't conflict with other applications.
          </p>
        </div>

        <div class="faq-item">
          <h3>Can I use ExplainShot on multiple monitors?</h3>
          <p>
            Yes. The capture overlay spans your entire desktop, so you can select a region anywhere
            across all connected displays.
          </p>
        </div>

        <div class="faq-item">
          <h3>What image formats are supported?</h3>
          <p>
            Screenshots are saved as PNG or JPEG — pick your default in Settings → Screenshots. PNG
            is recommended for crisp text and annotations.
          </p>
        </div>

        <div class="faq-item">
          <h3>Is there a portable version available?</h3>
          <p>
            Yes — the Windows download is a portable build that needs no installation. Your settings,
            screenshots, and chat history are stored under
            <code>%APPDATA%\ExplainShot</code>.
          </p>
        </div>

        <div class="faq-item">
          <h3>How do I report bugs or request features?</h3>
          <p>
            Please visit our
            <a href="https://github.com/p1k2i/explain-shot/issues" target="_blank" rel="noopener noreferrer"
              >GitHub Issues</a
            >
            page to report bugs or request new features.
          </p>
        </div>
      </section>

      <section class="troubleshooting" data-aos="fade-up" data-aos-delay="1000">
        <h2><i class="fas fa-screwdriver-wrench"></i> Troubleshooting</h2>

        <div class="trouble-item">
          <h3>The AI isn't responding or returns an error</h3>
          <p>
            Open Settings → AI provider and use "Test connection". Check the Base URL, make sure your
            local server (Ollama or LM Studio) is running, and confirm the selected model is
            vision-capable. For cloud endpoints, verify your API key.
          </p>
        </div>

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

.install-note {
  color: var(--color-text-muted);
  line-height: 1.6;
  margin-bottom: 1rem;
}

.hotkey-note {
  color: var(--color-text-muted);
  line-height: 1.6;
  margin-top: 1rem;
  font-size: 0.9rem;
}

.hotkey-note code,
.install-note code {
  background: var(--color-background);
  padding: 0.15rem 0.4rem;
  border-radius: 4px;
  font-family: 'Monaco', 'Consolas', 'Courier New', monospace;
  font-size: 0.85rem;
  border: 1px solid var(--color-border);
}

.step-content kbd {
  background: var(--color-background);
  border: 1px solid var(--color-border);
  border-radius: 4px;
  padding: 0.1rem 0.4rem;
  font-size: 0.85rem;
  font-family: inherit;
  box-shadow: 0 1px 2px rgba(0, 0, 0, 0.1);
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

.faq-item code {
  background: var(--color-background);
  padding: 0.15rem 0.4rem;
  border-radius: 4px;
  font-family: 'Monaco', 'Consolas', 'Courier New', monospace;
  font-size: 0.85rem;
  border: 1px solid var(--color-border);
  color: var(--color-text);
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

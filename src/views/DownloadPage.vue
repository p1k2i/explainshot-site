<template>
  <div class="download-page">
    <div class="container">
      <header class="page-header" data-aos="fade-up">
        <h1>Download ExplainShot</h1>
        <p>Get the latest version of ExplainShot for your platform</p>
      </header>

      <section class="download-hero" data-aos="fade-up" data-aos-delay="200">
        <div class="current-version">
          <div class="version-badge">
            <span class="version-label">Pre-release</span>
            <span class="version-number">v0.1.0</span>
          </div>
          <p class="version-date">October 19, 2025</p>
        </div>
      </section>

      <section class="download-options" data-aos="fade-up" data-aos-delay="400">
        <h2>🖥️ Download for Your Platform</h2>

        <div class="platforms-grid">
          <div class="platform-card">
            <div class="platform-icon">🪟</div>
            <h3>Windows</h3>
            <p class="platform-info">Windows 10/11 (64-bit)</p>
            <div class="download-buttons">
              <button class="btn btn-primary" disabled @click="trackDownload('windows-installer')">
                <span class="download-icon">⬇️</span>
                Download Installer
                <small>(.exe - ? MB)</small>
              </button>
              <a href="#" class="btn btn-secondary" @click="trackDownload('windows-portable')">
                <span class="download-icon">📦</span>
                Portable Version
                <small>(.zip - 52.3 MB)</small>
              </a>
            </div>
          </div>

          <div class="platform-card">
            <div class="platform-icon">🍎</div>
            <h3>macOS</h3>
            <p class="platform-info">macOS 11.0+ (Universal Binary)</p>
            <div class="download-buttons">
              <button class="btn btn-primary" disabled @click="trackDownload('macos-dmg')">
                <span class="download-icon">⬇️</span>
                Download DMG
                <small>(.dmg - ? MB)</small>
              </button>
              <button class="btn btn-secondary" disabled @click="trackDownload('macos-zip')">
                <span class="download-icon">📦</span>
                ZIP Archive
                <small>(.zip - ? MB)</small>
              </button>
            </div>
          </div>

          <div class="platform-card">
            <div class="platform-icon">🐧</div>
            <h3>Linux</h3>
            <p class="platform-info">Ubuntu 20.04+ / Debian 11+ / Fedora 35+</p>
            <div class="download-buttons">
              <button class="btn btn-primary" disabled @click="trackDownload('linux-appimage')">
                <span class="download-icon">⬇️</span>
                Download AppImage
                <small>(.AppImage - ? MB)</small>
              </button>
              <button class="btn btn-secondary" disabled @click="trackDownload('linux-deb')">
                <span class="download-icon">📦</span>
                DEB Package
                <small>(.deb - ? MB)</small>
              </button>
            </div>
          </div>
        </div>
      </section>

      <section class="alternative-downloads" data-aos="fade-up" data-aos-delay="600">
        <h2>📥 Alternative Downloads</h2>

        <div class="alt-downloads-grid">
          <div class="alt-download-card">
            <div class="alt-icon">🐙</div>
            <h3>GitHub Releases</h3>
            <p>Access all versions, pre-releases, and source code directly from GitHub.</p>
            <a
              href="https://github.com/p1k2i/explain-shot/releases"
              class="btn btn-outline"
              target="_blank"
            >
              View All Releases
            </a>
          </div>

          <!-- <div class="alt-download-card">
            <div class="alt-icon">🏪</div>
            <h3>Microsoft Store</h3>
            <p>Get automatic updates and easy installation through the Microsoft Store.</p>
            <a href="#" class="btn btn-outline" @click="trackDownload('microsoft-store')">
              Get from Store
            </a>
          </div>

          <div class="alt-download-card">
            <div class="alt-icon">🍺</div>
            <h3>Homebrew (macOS)</h3>
            <p>Install via Homebrew package manager for easy updates and management.</p>
            <div class="code-snippet">
              <code>brew install --cask explainshot</code>
              <button class="copy-btn" @click="copyToClipboard('brew install --cask explainshot')">
                📋
              </button>
            </div>
          </div>

          <div class="alt-download-card">
            <div class="alt-icon">📦</div>
            <h3>Snap Store (Linux)</h3>
            <p>Universal Linux package with sandboxed security and automatic updates.</p>
            <div class="code-snippet">
              <code>sudo snap install explainshot</code>
              <button class="copy-btn" @click="copyToClipboard('sudo snap install explainshot')">
                📋
              </button>
            </div>
          </div> -->
        </div>
      </section>

      <section class="system-requirements" data-aos="fade-up" data-aos-delay="800">
        <h2>⚙️ System Requirements</h2>

        <div class="requirements-grid">
          <div class="requirement-card">
            <h3>🪟 Windows</h3>
            <ul>
              <li>Windows 10 version 1903 or later (64-bit)</li>
              <li>4 GB RAM minimum, 8 GB recommended</li>
              <li>200 MB free disk space</li>
              <li>.NET Framework 4.8 or later</li>
            </ul>
          </div>

          <div class="requirement-card">
            <h3>🍎 macOS</h3>
            <ul>
              <li>macOS 11.0 (Big Sur) or later</li>
              <li>4 GB RAM minimum, 8 GB recommended</li>
              <li>150 MB free disk space</li>
              <li>Intel or Apple Silicon processor</li>
            </ul>
          </div>

          <div class="requirement-card">
            <h3>🐧 Linux</h3>
            <ul>
              <li>Ubuntu 20.04+ / Debian 11+ / Fedora 35+</li>
              <li>4 GB RAM minimum, 8 GB recommended</li>
              <li>180 MB free disk space</li>
              <li>X11 or Wayland display server</li>
            </ul>
          </div>
        </div>
      </section>

      <section class="installation-guide" data-aos="fade-up" data-aos-delay="1000">
        <h2>🛠️ Installation Guide</h2>

        <div class="guide-tabs">
          <button
            v-for="platform in platforms"
            :key="platform.id"
            class="tab-button"
            :class="{ active: activeTab === platform.id }"
            @click="activeTab = platform.id"
          >
            {{ platform.name }}
          </button>
        </div>

        <div class="tab-content">
          <div v-if="activeTab === 'windows'" class="installation-steps">
            <h3>Windows Installation</h3>
            <ol>
              <li>Download the ExplainShot installer (.exe file)</li>
              <li>Run the installer as Administrator if prompted</li>
              <li>Follow the installation wizard</li>
              <li>Launch ExplainShot from the Start Menu or Desktop shortcut</li>
              <li>Configure your preferences in the Settings menu</li>
            </ol>
            <div class="tip">
              <strong>💡 Tip:</strong> Use the portable version if you don't have admin rights or want to run from a USB drive.
            </div>
          </div>

          <div v-if="activeTab === 'macos'" class="installation-steps">
            <h3>macOS Installation</h3>
            <ol>
              <li>Download the ExplainShot DMG file</li>
              <li>Open the DMG file and drag ExplainShot to your Applications folder</li>
              <li>Right-click ExplainShot and select "Open" (required for first launch)</li>
              <li>Click "Open" in the security dialog to confirm</li>
              <li>ExplainShot will launch and be available in your Applications</li>
            </ol>
            <div class="tip">
              <strong>💡 Tip:</strong> You might need to go to System Preferences > Security & Privacy to allow ExplainShot to run.
            </div>
          </div>

          <div v-if="activeTab === 'linux'" class="installation-steps">
            <h3>Linux Installation</h3>
            <ol>
              <li>Download the AppImage file</li>
              <li>Make it executable: <code>chmod +x ExplainShot-*.AppImage</code></li>
              <li>Run the AppImage: <code>./ExplainShot-*.AppImage</code></li>
              <li>Optionally, integrate it with your desktop environment</li>
            </ol>
            <div class="tip">
              <strong>💡 Tip:</strong> For DEB/RPM packages, use your package manager to install and get automatic integration.
            </div>
          </div>
        </div>
      </section>

      <section class="release-notes" data-aos="fade-up" data-aos-delay="1200">
        <h2>📝 What's New in v0.1.0</h2>

        <div class="changelog">
          <div class="changelog-section">
            <h3>✨ New Features</h3>
            <ul>
              <li>🎯 Smart region detection with automatic content recognition</li>
              <li>🎨 Advanced annotation tools with customizable styles</li>
              <li>⚡ Performance improvements with 40% faster capture times</li>
              <li>🌍 Multi-language support (English, Spanish, French, German)</li>
              <li>☁️ Cloud integration for seamless sharing and backup</li>
            </ul>
          </div>

          <div class="changelog-section">
            <h3>🔧 Improvements</h3>
            <ul>
              <li>Enhanced UI/UX with modern design principles</li>
              <li>Better keyboard shortcuts and accessibility</li>
              <li>Improved export options with more file formats</li>
              <li>Optimized memory usage and stability</li>
            </ul>
          </div>

          <div class="changelog-section">
            <h3>🐛 Bug Fixes</h3>
            <ul>
              <li>Fixed screenshot corruption on high-DPI displays</li>
              <li>Resolved annotation alignment issues</li>
              <li>Fixed memory leaks during extended usage</li>
              <li>Corrected color profile handling</li>
            </ul>
          </div>
        </div>

        <div class="changelog-link">
          <a href="https://github.com/p1k2i/explain-shot/blob/main/CHANGELOG.md" target="_blank" class="btn btn-outline">
            View Complete Changelog
          </a>
        </div>
      </section>

      <section class="support-section" data-aos="fade-up" data-aos-delay="1400">
        <h2>🤝 Need Help?</h2>

        <div class="support-grid">
          <div class="support-card">
            <div class="support-icon">📚</div>
            <h3>Documentation</h3>
            <p>Comprehensive guides and tutorials to get you started.</p>
            <RouterLink to="/help" class="btn btn-secondary">View Help</RouterLink>
          </div>

          <div class="support-card">
            <div class="support-icon">💬</div>
            <h3>Community Support</h3>
            <p>Join our community for discussions and peer support.</p>
            <RouterLink to="/support" class="btn btn-secondary">Get Support</RouterLink>
          </div>

          <div class="support-card">
            <div class="support-icon">🐛</div>
            <h3>Report Issues</h3>
            <p>Found a bug? Let us know through our issue tracker.</p>
            <a
              href="https://github.com/p1k2i/explain-shot/issues"
              class="btn btn-secondary"
              target="_blank"
            >
              Report Bug
            </a>
          </div>
        </div>
      </section>
    </div>
  </div>
</template>

<script setup lang="ts">
import { ref } from 'vue'
import { RouterLink } from 'vue-router'

const activeTab = ref('windows')
const platforms = [
  { id: 'windows', name: 'Windows' },
  { id: 'macos', name: 'macOS' },
  { id: 'linux', name: 'Linux' }
]

const trackDownload = (platform: string) => {
  // Analytics tracking for downloads
  console.log(`Download tracked: ${platform}`)
  // In a real app, you'd implement actual download tracking here
  alert(`Download starting for ${platform}. This is a demo - no actual file will be downloaded.`)
}

// eslint-disable-next-line @typescript-eslint/no-unused-vars
const copyToClipboard = async (text: string) => {
  try {
    await navigator.clipboard.writeText(text)
    // You could show a toast notification here
    console.log('Copied to clipboard:', text)
  } catch (err) {
    console.error('Failed to copy:', err)
  }
}
</script>

<style scoped>
.download-page {
  min-height: 100vh;
  padding: 2rem 0;
}

.container {
  max-width: 1200px;
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

/* Download Hero */
.download-hero {
  text-align: center;
  margin-bottom: 3rem;
}

.current-version {
  background: linear-gradient(135deg, var(--color-primary), var(--color-accent, #7c3aed));
  color: white;
  padding: 2rem;
  border-radius: 16px;
  display: inline-block;
  min-width: 300px;
}

.version-badge {
  display: flex;
  align-items: center;
  justify-content: center;
  gap: 1rem;
  margin-bottom: 0.5rem;
}

.version-label {
  font-size: 0.875rem;
  opacity: 0.9;
}

.version-number {
  font-size: 1.5rem;
  font-weight: 700;
}

.version-date {
  opacity: 0.8;
  font-size: 0.875rem;
}

/* Platform Downloads */
.platforms-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
  gap: 2rem;
  margin-bottom: 3rem;
}

.platform-card {
  background: var(--color-background-soft);
  padding: 2rem;
  border-radius: 16px;
  border: 1px solid var(--color-border);
  text-align: center;
  transition: transform 0.3s ease, box-shadow 0.3s ease;
}

.platform-card:hover {
  transform: translateY(-5px);
  box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
}

.platform-icon {
  font-size: 3rem;
  margin-bottom: 1rem;
}

.platform-card h3 {
  font-size: 1.5rem;
  color: var(--color-heading);
  margin-bottom: 0.5rem;
}

.platform-info {
  color: var(--color-text-muted);
  font-size: 0.875rem;
  margin-bottom: 1.5rem;
}

.download-buttons {
  display: flex;
  flex-direction: column;
  gap: 0.75rem;
}

.download-buttons .btn {
  display: flex;
  align-items: center;
  justify-content: center;
  gap: 0.5rem;
  flex-direction: column;
}

.download-buttons .btn small {
  font-size: 0.75rem;
  opacity: 0.8;
}

.download-icon {
  font-size: 1.125rem;
}

/* Alternative Downloads */
.alt-downloads-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
  gap: 2rem;
}

.alt-download-card {
  background: var(--color-background-soft);
  padding: 2rem;
  border-radius: 12px;
  border: 1px solid var(--color-border);
  text-align: center;
  transition: transform 0.3s ease, box-shadow 0.3s ease;
}

.alt-download-card:hover {
  transform: translateY(-5px);
  box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
}

.alt-icon {
  font-size: 2.5rem;
  margin-bottom: 1rem;
}

.alt-download-card h3 {
  font-size: 1.25rem;
  color: var(--color-heading);
  margin-bottom: 1rem;
}

.alt-download-card p {
  color: var(--color-text-muted);
  line-height: 1.6;
  margin-bottom: 1.5rem;
}

.code-snippet {
  background: var(--color-background);
  border: 1px solid var(--color-border);
  border-radius: 8px;
  padding: 1rem;
  margin: 1rem 0;
  display: flex;
  align-items: center;
  gap: 0.5rem;
  font-family: 'Courier New', monospace;
}

.code-snippet code {
  flex: 1;
  color: var(--color-text);
}

.copy-btn {
  background: var(--color-primary);
  color: white;
  border: none;
  border-radius: 4px;
  padding: 0.25rem 0.5rem;
  cursor: pointer;
  font-size: 0.875rem;
  transition: background 0.3s ease;
}

.copy-btn:hover {
  background: var(--color-primary-dark);
}

/* System Requirements */
.requirements-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
  gap: 2rem;
}

.requirement-card {
  background: var(--color-background-soft);
  padding: 2rem;
  border-radius: 12px;
  border: 1px solid var(--color-border);
}

.requirement-card h3 {
  color: var(--color-heading);
  margin-bottom: 1rem;
  font-size: 1.25rem;
}

.requirement-card ul {
  list-style: none;
  padding: 0;
}

.requirement-card li {
  color: var(--color-text-muted);
  line-height: 1.6;
  margin-bottom: 0.5rem;
  padding-left: 1.5rem;
  position: relative;
}

.requirement-card li::before {
  content: '✓';
  position: absolute;
  left: 0;
  color: var(--color-success, #10b981);
  font-weight: bold;
}

/* Installation Guide */
.guide-tabs {
  display: flex;
  gap: 0.5rem;
  margin-bottom: 2rem;
  border-bottom: 1px solid var(--color-border);
}

.tab-button {
  background: none;
  border: none;
  padding: 1rem 1.5rem;
  color: var(--color-text-muted);
  cursor: pointer;
  transition: all 0.3s ease;
  border-bottom: 2px solid transparent;
}

.tab-button.active {
  color: var(--color-primary);
  border-bottom-color: var(--color-primary);
}

.tab-button:hover {
  color: var(--color-text);
}

.tab-content {
  background: var(--color-background-soft);
  padding: 2rem;
  border-radius: 12px;
  border: 1px solid var(--color-border);
}

.installation-steps h3 {
  color: var(--color-heading);
  margin-bottom: 1.5rem;
}

.installation-steps ol {
  color: var(--color-text-muted);
  line-height: 1.6;
  margin-bottom: 1.5rem;
}

.installation-steps li {
  margin-bottom: 0.75rem;
}

.installation-steps code {
  background: var(--color-background);
  padding: 0.25rem 0.5rem;
  border-radius: 4px;
  font-family: 'Courier New', monospace;
  font-size: 0.875rem;
}

.tip {
  background: var(--color-primary-light, rgba(59, 130, 246, 0.1));
  border-left: 4px solid var(--color-primary);
  padding: 1rem;
  border-radius: 8px;
  color: var(--color-text);
}

/* Release Notes */
.changelog {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
  gap: 2rem;
  margin-bottom: 2rem;
}

.changelog-section {
  background: var(--color-background-soft);
  padding: 2rem;
  border-radius: 12px;
  border: 1px solid var(--color-border);
}

.changelog-section h3 {
  color: var(--color-heading);
  margin-bottom: 1rem;
  font-size: 1.25rem;
}

.changelog-section ul {
  list-style: none;
  padding: 0;
}

.changelog-section li {
  color: var(--color-text-muted);
  line-height: 1.6;
  margin-bottom: 0.5rem;
  padding-left: 0.5rem;
}

.changelog-link {
  text-align: center;
}

/* Support Section */
.support-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
  gap: 2rem;
}

.support-card {
  background: var(--color-background-soft);
  padding: 2rem;
  border-radius: 12px;
  border: 1px solid var(--color-border);
  text-align: center;
  transition: transform 0.3s ease, box-shadow 0.3s ease;
}

.support-card:hover {
  transform: translateY(-5px);
  box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
}

.support-icon {
  font-size: 2.5rem;
  margin-bottom: 1rem;
}

.support-card h3 {
  color: var(--color-heading);
  margin-bottom: 1rem;
}

.support-card p {
  color: var(--color-text-muted);
  line-height: 1.6;
  margin-bottom: 1.5rem;
}

/* Buttons */
.btn {
  display: inline-block;
  padding: 0.75rem 1.5rem;
  border-radius: 8px;
  text-decoration: none;
  font-weight: 500;
  transition: all 0.3s ease;
  border: 2px solid transparent;
  cursor: pointer;
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

.btn-outline {
  background: transparent;
  color: var(--color-text);
  border-color: var(--color-border);
}

.btn-outline:hover {
  background: var(--color-background-soft);
  border-color: var(--color-primary);
  color: var(--color-primary);
}

/* Responsive */
@media (max-width: 768px) {
  .page-header h1 {
    font-size: 2rem;
  }

  .platforms-grid,
  .alt-downloads-grid,
  .requirements-grid,
  .changelog,
  .support-grid {
    grid-template-columns: 1fr;
  }

  .download-buttons {
    flex-direction: column;
  }

  .guide-tabs {
    flex-direction: column;
  }

  .tab-button {
    text-align: left;
    border-bottom: 1px solid var(--color-border);
    border-right: none;
  }

  .tab-button.active {
    border-bottom-color: var(--color-border);
    border-left: 3px solid var(--color-primary);
    background: var(--color-background-soft);
  }
}

@media (max-width: 480px) {
  .container {
    padding: 0 1rem;
  }

  .current-version {
    min-width: auto;
    padding: 1.5rem;
  }

  .platform-card,
  .alt-download-card,
  .requirement-card,
  .changelog-section,
  .support-card {
    padding: 1.5rem;
  }
}
</style>

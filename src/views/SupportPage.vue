<template>
  <div class="support-page">
    <div class="container">
      <header class="page-header" data-aos="fade-up">
        <h1>Support & Community</h1>
        <p>Help improve ExplainShot and connect with our community</p>
      </header>

      <section class="contribute" data-aos="fade-up" data-aos-delay="200">
        <h2>🤝 How to Contribute</h2>

        <div class="contribute-grid">
          <div class="contribute-card">
            <div class="contribute-icon">💻</div>
            <h3>Code Contributions</h3>
            <p>
              Help improve ExplainShot by contributing code, fixing bugs, or adding new features.
            </p>
            <div class="contribute-links">
              <a
                href="https://github.com/your-username/explain-shot"
                class="btn btn-primary"
                target="_blank"
              >
                View Repository
              </a>
              <a
                href="https://github.com/your-username/explain-shot/blob/main/CONTRIBUTING.md"
                class="btn btn-secondary"
                target="_blank"
              >
                Contribution Guidelines
              </a>
            </div>
          </div>

          <div class="contribute-card">
            <div class="contribute-icon">🐛</div>
            <h3>Report Issues</h3>
            <p>Found a bug or have a feature request? Let us know through our issue tracker.</p>
            <div class="contribute-links">
              <a
                href="https://github.com/your-username/explain-shot/issues/new?template=bug_report.md"
                class="btn btn-primary"
                target="_blank"
              >
                Report Bug
              </a>
              <a
                href="https://github.com/your-username/explain-shot/issues/new?template=feature_request.md"
                class="btn btn-secondary"
                target="_blank"
              >
                Request Feature
              </a>
            </div>
          </div>

          <div class="contribute-card">
            <div class="contribute-icon">📚</div>
            <h3>Documentation</h3>
            <p>Help improve our documentation, write tutorials, or translate content.</p>
            <div class="contribute-links">
              <a
                href="https://github.com/your-username/explain-shot/wiki"
                class="btn btn-primary"
                target="_blank"
              >
                Documentation
              </a>
              <a href="mailto:help@explainshot.com" class="btn btn-secondary"> Contact Us </a>
            </div>
          </div>

          <div class="contribute-card">
            <div class="contribute-icon">💬</div>
            <h3>Community Support</h3>
            <p>Help other users by answering questions and sharing your experiences.</p>
            <div class="contribute-links">
              <a
                href="https://github.com/your-username/explain-shot/discussions"
                class="btn btn-primary"
                target="_blank"
              >
                Discussions
              </a>
              <a href="https://discord.gg/explainshot" class="btn btn-secondary" target="_blank">
                Discord Community
              </a>
            </div>
          </div>
        </div>
      </section>

      <section class="donate" data-aos="fade-up" data-aos-delay="400">
        <h2>💖 Support the Project</h2>
        <p class="donate-intro">
          ExplainShot is free and open-source software. Your support helps us maintain and improve
          the project, add new features, and keep it accessible for everyone.
        </p>

        <div class="donation-options">
          <div class="donation-card featured">
            <div class="donation-icon">🌟</div>
            <h3>GitHub Sponsors</h3>
            <p>Support ongoing development with monthly or one-time contributions on GitHub.</p>
            <div class="donation-benefits">
              <div class="benefit">✓ Priority support</div>
              <div class="benefit">✓ Feature requests consideration</div>
              <div class="benefit">✓ Sponsor badge</div>
            </div>
            <a
              href="https://github.com/sponsors/your-username"
              class="btn btn-primary btn-large"
              target="_blank"
            >
              Become a Sponsor
            </a>
          </div>

          <div class="donation-card">
            <div class="donation-icon">🍃</div>
            <h3>OpenCollective</h3>
            <p>Transparent funding for the ExplainShot community and ecosystem.</p>
            <a
              href="https://opencollective.com/explainshot"
              class="btn btn-secondary"
              target="_blank"
            >
              Support on OpenCollective
            </a>
          </div>

          <div class="donation-card">
            <div class="donation-icon">💳</div>
            <h3>PayPal</h3>
            <p>Quick one-time donations via PayPal for immediate support.</p>
            <div id="donate-button-container">
              <div id="donate-button"></div>
            </div>
          </div>
        </div>

        <div class="sponsors-section">
          <h3>🙏 Current Sponsors</h3>
          <p class="sponsors-note">
            Thank you to all our amazing sponsors who make this project possible!
          </p>
          <div class="sponsors-grid">
            <!-- Sponsor logos/names would be dynamically loaded here -->
            <div class="sponsor-placeholder">
              <p>Your name could be here!</p>
              <small>Become a sponsor to support ExplainShot</small>
            </div>
          </div>
        </div>
      </section>

      <section class="contact" data-aos="fade-up" data-aos-delay="600">
        <h2>📧 Get in Touch</h2>

        <div class="contact-grid">
          <div class="contact-card">
            <div class="contact-icon">📧</div>
            <h3>Email</h3>
            <p>General inquiries, support questions, or partnership opportunities.</p>
            <a href="mailto:p1k2i.dev@gmail.com" class="contact-link">p1k2i.dev@gmail.com</a>
          </div>

          <div class="contact-card">
            <div class="contact-icon">💼</div>
            <h3>LinkedIn</h3>
            <p>Connect with the project maintainer for professional networking.</p>
            <a href="https://linkedin.com/in/p1k2i" class="contact-link" target="_blank">
              linkedin.com/in/p1k2i
            </a>
          </div>

          <div class="contact-card">
            <div class="contact-icon">🐙</div>
            <h3>GitHub</h3>
            <p>Technical discussions, bug reports, and open-source collaboration.</p>
            <a href="https://github.com/p1k2i" class="contact-link" target="_blank">
              github.com/p1k2i
            </a>
          </div>
        </div>
      </section>

      <section class="community-guidelines" data-aos="fade-up" data-aos-delay="800">
        <h2>📋 Community Guidelines</h2>

        <div class="guidelines-content">
          <div class="guideline-item">
            <h3>🤗 Be Respectful</h3>
            <p>
              Treat all community members with respect and kindness. We welcome contributors from
              all backgrounds and experience levels.
            </p>
          </div>

          <div class="guideline-item">
            <h3>🔍 Search First</h3>
            <p>
              Before posting a question or issue, please search existing discussions and
              documentation to avoid duplicates.
            </p>
          </div>

          <div class="guideline-item">
            <h3>📝 Provide Details</h3>
            <p>
              When reporting bugs or asking for help, include relevant details like your operating
              system, version, and steps to reproduce.
            </p>
          </div>

          <div class="guideline-item">
            <h3>🎯 Stay On Topic</h3>
            <p>
              Keep discussions relevant to ExplainShot. Off-topic conversations should be moved to
              appropriate channels.
            </p>
          </div>

          <div class="guideline-item">
            <h3>💡 Be Constructive</h3>
            <p>
              When providing feedback or criticism, focus on being constructive and helpful rather
              than just pointing out problems.
            </p>
          </div>

          <div class="guideline-item">
            <h3>🚫 No Spam</h3>
            <p>
              Avoid posting repetitive content, self-promotion without context, or unrelated
              commercial messages.
            </p>
          </div>
        </div>
      </section>

      <section class="roadmap" data-aos="fade-up" data-aos-delay="1000">
        <h2>🗺️ Project Roadmap</h2>
        <p class="roadmap-intro">
          Here's what we're working on and planning for the future of ExplainShot:
        </p>

        <div class="roadmap-timeline">
          <div class="roadmap-item completed">
            <div class="roadmap-marker"></div>
            <div class="roadmap-content">
              <h3>v0.1.0 - Minimal Features</h3>
              <p>Basic screenshot capture, settings and integration with Ollama.</p>
              <span class="roadmap-status">✅ Completed</span>
            </div>
          </div>

          <div class="roadmap-item in-progress">
            <div class="roadmap-marker"></div>
            <div class="roadmap-content">
              <h3>v1.0 - First Major Release</h3>
              <p>
                Seamless integration with leading cloud LLMs, customizable presets for rapid region capture, and improved UI/UX for a refined user experience.
              </p>
              <span class="roadmap-status">🚧 In Progress</span>
            </div>
          </div>

          <div class="roadmap-item planned">
            <div class="roadmap-marker"></div>
            <div class="roadmap-content">
              <h3>v2.0 - Cloud Integration</h3>
              <p>Seamless ExplainShot cloud services for easier usage, instant sharing, and real-time collaborative annotations.</p>
              <span class="roadmap-status">📅 Planned</span>
            </div>
          </div>

        </div>
      </section>
    </div>
  </div>
</template>

<script setup lang="ts">
import { onMounted } from 'vue';

declare global {
  interface Window {
    PayPal: unknown;
  }
}

onMounted(() => {
  const script = document.createElement('script');
  script.src = 'https://www.paypalobjects.com/donate/sdk/donate-sdk.js';
  script.charset = 'UTF-8';
  document.head.appendChild(script);
  script.onload = () => {
    // @ts-expect-error PayPal SDK is not typed
    window.PayPal.Donation.Button({
      env: 'production',
      hosted_button_id: '2Q8E2KWLMWTGQ',
      image: {
        src: 'https://www.paypalobjects.com/en_US/i/btn/btn_donate_LG.gif',
        alt: 'Donate with PayPal button',
        title: 'PayPal - The safer, easier way to pay online!',
      }
    }).render('#donate-button');
  };
});
</script>

<style scoped>
.support-page {
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

/* Contribute Section */
.contribute-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
  gap: 2rem;
}

.contribute-card {
  background: var(--color-background-soft);
  padding: 2rem;
  border-radius: 12px;
  border: 1px solid var(--color-border);
  text-align: center;
  transition:
    transform 0.3s ease,
    box-shadow 0.3s ease;
}

.contribute-card:hover {
  transform: translateY(-5px);
  box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
}

.contribute-icon {
  font-size: 3rem;
  margin-bottom: 1rem;
}

.contribute-card h3 {
  font-size: 1.5rem;
  color: var(--color-heading);
  margin-bottom: 1rem;
}

.contribute-card p {
  color: var(--color-text-muted);
  line-height: 1.6;
  margin-bottom: 1.5rem;
}

.contribute-links {
  display: flex;
  gap: 0.75rem;
  justify-content: center;
  flex-wrap: wrap;
}

/* Donation Section */
.donate-intro {
  text-align: center;
  font-size: 1.125rem;
  color: var(--color-text-muted);
  max-width: 800px;
  margin: 0 auto 3rem;
  line-height: 1.6;
}

.donation-options {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
  gap: 2rem;
  margin-bottom: 3rem;
}

.donation-card {
  background: var(--color-background-soft);
  padding: 2rem;
  border-radius: 12px;
  border: 1px solid var(--color-border);
  text-align: center;
  transition:
    transform 0.3s ease,
    box-shadow 0.3s ease;
}

.donation-card.featured {
  border-color: var(--color-primary);
  background: linear-gradient(
    135deg,
    var(--color-background-soft),
    var(--color-primary-light, rgba(59, 130, 246, 0.1))
  );
}

.donation-card:hover {
  transform: translateY(-5px);
  box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
}

.donation-icon {
  font-size: 3rem;
  margin-bottom: 1rem;
}

.donation-card h3 {
  font-size: 1.5rem;
  color: var(--color-heading);
  margin-bottom: 1rem;
}

.donation-card p {
  color: var(--color-text-muted);
  line-height: 1.6;
  margin-bottom: 1.5rem;
}

.donation-benefits {
  margin-bottom: 1.5rem;
}

.benefit {
  color: var(--color-primary);
  font-size: 0.875rem;
  margin-bottom: 0.5rem;
}

.sponsors-section {
  background: var(--color-background-soft);
  padding: 2rem;
  border-radius: 12px;
  border: 1px solid var(--color-border);
  text-align: center;
}

.sponsors-section h3 {
  color: var(--color-heading);
  margin-bottom: 1rem;
}

.sponsors-note {
  color: var(--color-text-muted);
  margin-bottom: 2rem;
}

.sponsor-placeholder {
  background: var(--color-background);
  border: 2px dashed var(--color-border);
  border-radius: 8px;
  padding: 2rem;
  color: var(--color-text-muted);
}

.sponsor-placeholder small {
  display: block;
  margin-top: 0.5rem;
  font-size: 0.875rem;
}

/* Contact Section */
.contact-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
  gap: 2rem;
}

.contact-card {
  background: var(--color-background-soft);
  padding: 2rem;
  border-radius: 12px;
  border: 1px solid var(--color-border);
  text-align: center;
  transition:
    transform 0.3s ease,
    box-shadow 0.3s ease;
}

.contact-card:hover {
  transform: translateY(-5px);
  box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
}

.contact-icon {
  font-size: 3rem;
  margin-bottom: 1rem;
}

.contact-card h3 {
  font-size: 1.5rem;
  color: var(--color-heading);
  margin-bottom: 1rem;
}

.contact-card p {
  color: var(--color-text-muted);
  line-height: 1.6;
  margin-bottom: 1rem;
}

.contact-link {
  color: var(--color-primary);
  text-decoration: none;
  font-weight: 500;
  word-break: break-all;
}

.contact-link:hover {
  text-decoration: underline;
}

/* Guidelines Section */
.guidelines-content {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
  gap: 1.5rem;
}

.guideline-item {
  background: var(--color-background-soft);
  padding: 1.5rem;
  border-radius: 8px;
  border: 1px solid var(--color-border);
}

.guideline-item h3 {
  color: var(--color-heading);
  margin-bottom: 0.75rem;
  font-size: 1.125rem;
}

.guideline-item p {
  color: var(--color-text-muted);
  line-height: 1.6;
}

/* Roadmap Section */
.roadmap-intro {
  text-align: center;
  font-size: 1.125rem;
  color: var(--color-text-muted);
  margin-bottom: 2rem;
  line-height: 1.6;
}

.roadmap-timeline {
  position: relative;
  max-width: 800px;
  margin: 0 auto;
}

.roadmap-timeline::before {
  content: '';
  position: absolute;
  left: 20px;
  top: 0;
  bottom: 0;
  width: 2px;
  background: var(--color-border);
}

.roadmap-item {
  position: relative;
  margin-bottom: 2rem;
  padding-left: 4rem;
}

.roadmap-marker {
  position: absolute;
  left: 11px;
  top: 0.5rem;
  width: 18px;
  height: 18px;
  border-radius: 50%;
  background: var(--color-background);
  border: 3px solid var(--color-border);
}

.roadmap-item.completed .roadmap-marker {
  background: var(--color-success, #10b981);
  border-color: var(--color-success, #10b981);
}

.roadmap-item.in-progress .roadmap-marker {
  background: var(--color-warning, #f59e0b);
  border-color: var(--color-warning, #f59e0b);
}

.roadmap-item.planned .roadmap-marker {
  background: var(--color-primary);
  border-color: var(--color-primary);
}

.roadmap-content {
  background: var(--color-background-soft);
  padding: 1.5rem;
  border-radius: 8px;
  border: 1px solid var(--color-border);
}

.roadmap-content h3 {
  color: var(--color-heading);
  margin-bottom: 0.5rem;
  font-size: 1.25rem;
}

.roadmap-content p {
  color: var(--color-text-muted);
  line-height: 1.6;
  margin-bottom: 0.75rem;
}

.roadmap-status {
  display: inline-block;
  padding: 0.25rem 0.75rem;
  border-radius: 15px;
  font-size: 0.875rem;
  font-weight: 500;
  background: var(--color-background);
  border: 1px solid var(--color-border);
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
  .page-header h1 {
    font-size: 2rem;
  }

  .contribute-grid,
  .donation-options,
  .contact-grid,
  .guidelines-content {
    grid-template-columns: 1fr;
  }

  .roadmap-timeline::before {
    left: 15px;
  }

  .roadmap-marker {
    left: 6px;
  }

  .roadmap-item {
    padding-left: 3rem;
  }
}
</style>

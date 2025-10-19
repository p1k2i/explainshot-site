# ExplainShot Website

A modern, responsive website for the ExplainShot screenshot annotation tool, built with Vue.js 3, TypeScript, and Vite.

## 🚀 Features

- **Modern Vue 3**: Built with Composition API and TypeScript
- **Responsive Design**: Mobile-first approach with clean, modern UI
- **Dark/Light Theme**: Toggle between themes with user preference persistence
- **Smooth Animations**: AOS (Animate On Scroll) integration for engaging user experience
- **SEO Optimized**: Proper meta tags, Open Graph, and Twitter card support
- **Accessibility**: WCAG compliant with keyboard navigation and screen reader support
- **Performance**: Optimized build with Vite for fast loading times

## 📁 Project Structure

```
explainshot-site/
├── public/                 # Static assets
├── src/
│   ├── assets/            # Styles and images
│   │   └── styles.css     # Global CSS with theme variables
│   ├── components/        # Reusable Vue components
│   │   └── NavBar.vue     # Navigation component
│   ├── router/            # Vue Router configuration
│   │   └── index.ts       # Routes definition
│   ├── stores/            # Pinia state management
│   │   └── theme.ts       # Theme management store
│   ├── views/             # Page components
│   │   ├── Main.vue       # Home page
│   │   ├── Help.vue       # Documentation page
│   │   └── Support.vue    # Support and community page
│   ├── App.vue            # Root component
│   └── main.ts            # Application entry point
├── index.html             # HTML template
├── package.json           # Dependencies and scripts
├── tsconfig.json          # TypeScript configuration
└── vite.config.ts         # Vite configuration
```

## 🛠️ Development Setup

### Prerequisites

- Node.js 20.19+ or 22.12+ (recommended)
- npm or yarn package manager

### Installation

1. Navigate to the project directory:
   ```bash
   cd explainshot-website/website/explainshot-site
   ```

2. Install dependencies:
   ```bash
   npm install
   ```

3. Start the development server:
   ```bash
   npm run dev
   ```

4. Open your browser and navigate to `http://localhost:5173`

### Available Scripts

- `npm run dev` - Start development server
- `npm run build` - Build for production
- `npm run preview` - Preview production build locally
- `npm run type-check` - Run TypeScript type checking
- `npm run lint` - Run ESLint
- `npm run format` - Format code with Prettier

## 🎨 Theming

The website supports both light and dark themes with automatic system preference detection:

- **CSS Variables**: All colors and styles use CSS custom properties
- **Automatic Detection**: Respects user's system theme preference
- **Persistent Storage**: Theme choice is saved in localStorage
- **Smooth Transitions**: Animated theme switching

### Theme Customization

Edit the CSS variables in `src/assets/styles.css`:

```css
:root {
  --color-primary: #3b82f6;
  --color-background: #ffffff;
  /* ... more variables */
}

:root.dark {
  --color-primary: #60a5fa;
  --color-background: #0f172a;
  /* ... dark theme variables */
}
```

## 📱 Responsive Design

The website is fully responsive with breakpoints:
- Mobile: `< 480px`
- Tablet: `481px - 768px`
- Desktop: `> 768px`

## 🔧 Configuration

### Analytics Setup

To enable privacy-friendly analytics, uncomment and configure the script in `index.html`:

```html
<!-- Plausible Analytics Example -->
<script defer data-domain="yourdomain.com" src="https://plausible.io/js/script.js"></script>
```

### Meta Tags and SEO

Update the meta tags in `index.html` with your actual domain and content.

### Navigation Links

Update the external links in the view components:
- GitHub repository links
- Email addresses
- Social media profiles
- Download links

## 🚀 Deployment

### Build for Production

```bash
npm run build
```

The `dist` folder will contain the built files ready for deployment.

### Deployment Options

The built website can be deployed to any static hosting service:
- **GitHub Pages**: Use GitHub Actions for automatic deployment
- **Vercel**: Connect your repository for zero-config deployment
- **Netlify**: Drag and drop the `dist` folder or use Git integration
- **CloudFlare Pages**: Git-based deployment with edge optimization

## 🎯 Browser Support

- Chrome/Edge: Last 2 versions
- Firefox: Last 2 versions
- Safari: Last 2 versions
- Mobile browsers: iOS Safari 12+, Chrome Android 90+

## 📝 Content Updates

### Adding New Pages

1. Create a new Vue component in `src/views/`
2. Add the route in `src/router/index.ts`
3. Update navigation in `src/components/NavBar.vue`

### Updating Content

- **Main Page**: Edit `src/views/Main.vue`
- **Help Documentation**: Edit `src/views/Help.vue`
- **Support Information**: Edit `src/views/Support.vue`

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch: `git checkout -b feature/your-feature`
3. Make your changes
4. Run tests: `npm run lint && npm run type-check`
5. Commit changes: `git commit -m 'Add some feature'`
6. Push to branch: `git push origin feature/your-feature`
7. Submit a pull request

## 📄 License

This project is licensed under the MIT License.

## 🙏 Acknowledgments

- [Vue.js](https://vuejs.org/) - Progressive JavaScript framework
- [Vite](https://vitejs.dev/) - Fast build tool
- [AOS](https://michalsnik.github.io/aos/) - Animate on scroll library
- [Inter Font](https://rsms.me/inter/) - Beautiful typography

---

Built with ❤️ for the ExplainShot community

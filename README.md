# 🦐 Portfolio — Patrick Martins

Personal portfolio and resume website built with the Shrimp Dev design system.

## Tech Stack

- **HTML5** — Semantic, accessible markup
- **CSS3** — Custom properties, Grid, Flexbox, animations
- **No frameworks** — Pure HTML/CSS, zero dependencies
- **Design System** — Shrimp Dev Brand Design v1.0

## Structure

```
portfolio/
├── index.html              # Main portfolio page
├── side-projects.html      # Shrimp Dev side projects
├── assets/
│   └── css/
│       └── portfolio.css   # Complete stylesheet
├── images/                 # Project screenshots
├── pdfs/                   # Resume and papers
├── nginx.conf              # Nginx config for VPS
├── deploy.sh               # Deploy script
└── .gitignore
```

## Design

- **Fonts:** Syne (display), Crimson Pro (body), JetBrains Mono (code)
- **Colors:** Dark theme (#0d0d0f bg, #ff6b35 accent)
- **Responsive:** Mobile-first, breakpoints at 480px, 768px, 1024px

## Deploy

### VPS (Oracle Cloud)

1. Copy `nginx.conf` to `/etc/nginx/sites-available/portfolio`
2. Create symlink: `ln -s /etc/nginx/sites-available/portfolio /etc/nginx/sites-enabled/`
3. Set web root: `/var/www/portfolio`
4. Run: `./deploy.sh`

### Manual

```bash
rsync -avz --exclude='.git' --exclude='deploy.sh' --exclude='nginx.conf' \
    ./ user@host:/var/www/portfolio/
```

## Author

**Patrick Martins** — Sr Data Scientist / AI Engineer
- LinkedIn: [patrick-m-lima](https://www.linkedin.com/in/patrick-m-lima/)
- GitHub: [pattrickx](https://github.com/pattrickx)
- Email: pattrickpx99@gmail.com

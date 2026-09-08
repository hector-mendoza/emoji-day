<p align="center">
  <img src="favicon.svg" width="56" height="56" alt="emoji del día">
</p>

<h1 align="center">emoji del día</h1>

<p align="center">
  <em>Un diagnóstico emocional de dudosa precisión.</em><br>
  <em>An emotional diagnosis of questionable accuracy.</em><br>
  <em>Um diagnóstico emocional de duvidosa precisão.</em>
</p>

<p align="center">
  <a href="https://emoji-day-hm.vercel.app/">Live experience</a>
  &nbsp;·&nbsp;
  <a href="LICENSE">MIT License</a>
</p>

<p align="center">
  <img src="https://img.shields.io/badge/stack-vanilla%20HTML%20%2F%20CSS%20%2F%20JS-111110?style=flat-square&labelColor=1a1a18&color=d97941" alt="Stack">
  <img src="https://img.shields.io/badge/dependencies-none-111110?style=flat-square&labelColor=1a1a18&color=d97941" alt="Dependencies">
  <img src="https://img.shields.io/badge/data-local%20only-111110?style=flat-square&labelColor=1a1a18&color=d97941" alt="Data">
</p>

---

## The idea

**emoji del día** is a single-page mood ritual: you choose how you feel, receive a date-seeded emoji and a short, self-aware description, and build a private 30-day archive of your emotional weather.

It is deliberately not a wellness product. No streaks, no gamification, no advice dressed up as insight — just a small, well-crafted moment of reflection with a sense of humor.

---

## What you get

| | |
|---|---|
| **Daily mood selection** | Eight moods — from *Feliz* to *Filosófico* — each with its own emoji pool and voice. |
| **Date-seeded results** | Same mood, same day, same emoji. Consistent unreliability you can count on. |
| **Randomizer** | A slot-machine re-roll when the universe's first draft doesn't land. |
| **30-day history** | A calendar grid of past entries, stored entirely on your device. |
| **Theme & language** | Dark and light modes with View Transitions. Spanish, English, and Portuguese — one tone throughout. |
| **Offline-ready** | Service worker and self-hosted typography. Works after the first visit, no network required. |
| **Private by design** | No accounts, no backend, no telemetry. Your history never leaves the browser. |

---

## Architecture

Built as a single artifact — no framework, no build step, no `node_modules`.

```
emoji-day/
├── index.html              Application (markup, styles, logic)
├── sw.js                   Offline cache & service worker
├── manifest.webmanifest    Installable PWA metadata
├── fonts/                  Self-hosted Space Grotesk
├── favicon.svg             Adaptive sun icon (light / dark)
├── icon-192.png            PWA icon
├── icon-512.png            PWA icon (maskable)
├── og-image.png            Social preview
├── robots.txt              Crawler policy
├── sitemap.xml             Canonical URLs
├── llms.txt                Machine-readable product summary
├── scripts/
│   └── set-site-url.sh     Vercel build: sync production URL
└── vercel.json             Static deploy & cache headers
```

**Stack:** HTML · CSS custom properties · View Transitions API · vanilla ES2020 · LocalStorage

---

## Run locally

Open the file directly, or serve the directory with any static server:

```bash
python3 -m http.server 8080
# or
npx serve .
```

Then visit `http://localhost:8080`.

There is nothing to install. That is intentional.

---

## Browser support

Modern browsers. View Transition animations on theme toggle require Chrome 111+; elsewhere the theme still switches — just without the flourish.

---

## Author

Crafted by **[Hector Mendoza](https://www.hectormendoza.me/)**.

---

<p align="center">
  <sub>No emojis were harmed. Several were mildly inconvenienced.</sub>
</p>

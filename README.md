# ☀️ Emoji del Dia

![License: MIT](https://img.shields.io/badge/License-MIT-orange.svg)

> *Un diagnóstico emocional de dudosa precisión.*  
> *An emotional diagnosis of questionable accuracy.*  
> *Um diagnóstico emocional de duvidosa precisão.*

---

## What is this?

A single-page web app that asks how you're feeling, assigns you an emoji for the day, and provides a short, funny description that is neither therapeutic nor scientifically valid. It also keeps a 30-day history so you can look back and feel things about your past feelings.

Basically: a mood tracker that doesn't take itself seriously. Which is exactly what the world needs more of.

---

## Features

- **Daily mood selection** — 8 moods, from `Feliz` to `Filosófico`
- **Date-seeded results** — same mood on the same day always gives you the same emoji. Consistent unreliability.
- **🎲 Randomizer** — slot-machine animation that picks a different result from your mood's pool
- **30-day history** — a calendar grid showing your emoji log, stored in LocalStorage
- **🌙 / ☀️ Theme toggle** — dark and light mode with View Transitions API (the funny animated kind)
- **ES / EN / PT** — three languages, one cynical tone
- **Easter egg** — click the sun logo 7 times. We're not going to tell you what happens.
- **Zero dependencies** — plain HTML, CSS, and vanilla JS. No framework, no build step, no `node_modules` folder judging you.

---

## Stack

| Thing | What |
|---|---|
| HTML | One file |
| CSS | Custom properties, View Transitions API, system font + Space Grotesk |
| JavaScript | Vanilla, ES2020, no bundler |
| Storage | `localStorage` only |
| Backend | There is no backend |
| Framework | No |

---

## Running it

```bash
# Option 1 — just open it
open index.html

# Option 2 — serve it locally (any static server works)
npx serve .
python -m http.server
```

That's it. There's no `npm install`. You're welcome.

---

## File structure

```
emoji-day/
├── index.html     ← the whole app
├── favicon.svg    ← adaptive sun face (dark/light mode aware)
└── README.md      ← you are here
```

---

## Browser support

Works in any modern browser. The View Transition animations (the fun part of the theme toggle) require Chrome 111+. On older browsers it just… switches themes. Less dramatic, equally functional.

---

## Credits

Built by **[Hector Mendoza](https://www.hectormendoza.me/)** — with an unreasonable amount of attention paid to the funny descriptions.

---

*No emojis were harmed in the making of this project. Several were mildly inconvenienced.*

# FreelanceFlow

A single-file PWA for solo freelancers to track income, expenses, time, and receipts — all stored locally in the browser.

## Features

- Income & expense tracking with categories, projects, and venues
- Calendar of events with optional linked income
- Receipt scanning (Tesseract.js OCR) + searchable gallery
- Time tracker with after-the-fact editing
- Reports and stat detail with monthly / quarterly / annual navigation
- CSV export, full data reset
- Works offline; data lives in localStorage + IndexedDB on your device

## Stack

- React 18 (UMD) + Babel Standalone — JSX transformed in the browser, no build step
- Tailwind CSS Play CDN with a custom palette
- Tesseract.js (lazy-loaded) for receipt OCR
- IndexedDB for receipt images, localStorage for everything else

## Local development

Open `index.html` in a browser. That's it — no install, no compile.

For local network access (e.g. from a phone), run any static server:

```bash
python3 -m http.server 8000
# or
npx serve .
```

## Deployment

This repo is set up for Netlify. Push to your connected branch and Netlify will publish `index.html` straight from the root. See `netlify.toml` for headers.

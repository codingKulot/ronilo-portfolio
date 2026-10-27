# Ronilo Jinon Jr — Portfolio Website

A ready-to-upload, single-page portfolio. No build step and no server code.

## What's inside

```
index.html                              the whole website (styles and scripts included)
assets/Ronilo-Jinon-Jr-Resume.pdf       downloaded by the "Download Resume" button
assets/photo.jpg                        ADD THIS — your photo (see below)
```

## Preview on your computer (localhost)

Double-click **`start-preview.bat`**. Your browser opens **http://localhost:5500** and the page
refreshes by itself every time you save `index.html` (or anything in the folder).
Keep the black window open while you work; close it to stop the preview.

It uses Bun or Node.js if you have them (auto-refresh), otherwise Python (press F5 after saving).
Alternative: open this folder in VS Code, install the **Live Server** extension, and click **Go Live**.

## Before you upload

1. **Add your photo.** Save a square photo as `assets/photo.jpg` (about 800×800 px).
   It appears inside the orange circle automatically. Until you add it, a placeholder shows.
2. **(Optional) Add LinkedIn and GitHub.** In `index.html`, search for `YOUR-PROFILE`,
   put in your profile links, and delete the `<!--` and `-->` lines around them.
3. **Updating your resume later:** replace `assets/Ronilo-Jinon-Jr-Resume.pdf` with a file of the same name.

## Upload it (free options)

- **Netlify Drop** — go to app.netlify.com/drop and drag the whole folder in. You get a live link in seconds.
- **GitHub Pages** — create a repository, upload these files, then Settings → Pages → deploy from the `main` branch.
- **Vercel** or any web host — upload the folder as-is; `index.html` is the home page.

## Contact form — one-time activation

Messages from the form go straight to **ronilo29.career@gmail.com** through FormSubmit (free, no account).

- The **first** message anyone sends (send a test one yourself after uploading) triggers an
  activation email from FormSubmit. Click **Activate Form** in that email once.
- After that, every message arrives in your inbox with the visitor's name, email, subject and
  message; just hit Reply to answer them.
- If the form ever can't send, visitors are shown your email address instead, so no inquiry is lost.

The form must be tested from the uploaded site (an http/https address), not by double-clicking the file on your computer.

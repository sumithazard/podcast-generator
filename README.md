# 🎙️ Podcast Generator

A GitHub Action to automatically generate and publish a **Spotify‑compliant podcast RSS feed** from simple YAML configuration.  
Perfect for developers, creators, and teams who want to automate podcast publishing directly from GitHub.

---

## 🚀 Features
- Generate a valid `podcast.xml` feed from `feed.yaml`
- Automatically add required tags (`GUID`, `itunes:owner`, etc.)
- Publish feed via **GitHub Pages** or any static host
- Validate feed for Spotify/Apple compliance
- Lightweight Dockerized workflow with Python + PyYAML

---

## 📦 Usage

Add the following to your workflow file (e.g. `.github/workflows/podcast.yml`):

```yaml
name: Podcast Feed Generator

on:
  push:
    branches: [ "main" ]

jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - name: Checkout repo
        uses: actions/checkout@v3

      - name: Run Podcast Generator
        uses: sumithazard/podcast-generator@v1

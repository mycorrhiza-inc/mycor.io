# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a Quarto blog/website for "Ecology, Society, Democracy" - a personal notebook focused on democratic ecosocialism. The site is published to GitHub Pages at https://ecosocdem.github.io.

## Build and Development Commands

```bash
# Start local preview server with auto-reload
quarto preview

# Build the website (outputs to docs/ directory)
quarto render

# Preview a specific file
quarto preview posts/filename.qmd
```

## Development Environment

The project uses `devenv` (Nix-based) for reproducible environments:
```bash
direnv allow    # Activates environment with Quarto and R
```

## Architecture

- **`_quarto.yml`**: Main site configuration (theme, navigation, output settings)
- **`index.qmd`**: Home page with blog listing
- **`posts/`**: Blog posts directory (~300 posts spanning 2016-2025)
  - **`posts/_metadata.yml`**: Default frontmatter for all posts (author, date format)
- **`images/`**: Static images referenced by posts
- **`docs/`**: Generated output directory (gitignored, used for GitHub Pages)
- **`_freeze/`**: Cached execution results (gitignored)

## Post Conventions

Posts use `.qmd` (Quarto markdown) format with YAML frontmatter:
```yaml
---
title: "Post Title"
author: "Brad Venner"
date: "2025-01-25"
draft: true
---
```

All posts are currently marked as `draft: true`.

## Deployment

The site deploys automatically via GitHub Actions when pushing to the `main` branch. The workflow (`.github/workflows/publish.yml`) renders the Quarto project and deploys to GitHub Pages.

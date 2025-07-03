# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview
This is a personal portfolio/blog website built with MkDocs and hosted on GitHub Pages at nikubaba.com. The site uses MkDocs with Material theme, Tailwind CSS for styling, and UV for Python dependency management.

## Development Commands

### Running the development server
```bash
# Run in background with nohup:
nohup uv run mkdocs serve > mkdocs.log 2>&1 &
# This will run the server in the background and save output to mkdocs.log

# Or use the serve script:
./serve.sh
```

### Building the site
```bash
./build.sh
# This runs: uv sync && uv run mkdocs build
```

### Deploying to GitHub Pages
```bash
./publish.sh
# This builds the site and pushes to the gh-pages branch
```

### Installing dependencies
```bash
# Python dependencies (managed by UV)
uv sync

# JavaScript dependencies (for Tailwind CSS)
bun install
# or npm install
```

## Architecture

The codebase follows MkDocs conventions with custom styling via Tailwind CSS:

- `docs/` - Source content in Markdown format
  - `docs/blog/` - Blog posts
  - `docs/work/` - Portfolio/work sections
  - `docs/music/` - Music projects
  - `docs/assets/` - Images and static files
  - `docs/stylesheets/` - Custom CSS files including Tailwind output
- `site/` - Generated static site (gitignored)
- `theme_overrides/` - Custom Material theme overrides
- `mkdocs.yml` - Main configuration file for site structure and features
- Shell scripts (`.sh` files) - Build and deployment automation

## Key Configuration Files

- `mkdocs.yml` - Defines site structure, navigation, theme settings, and plugins
- `pyproject.toml` - Python dependencies via UV
- `package.json` - JavaScript dependencies for Tailwind CSS
- `tailwind.config.js` - Tailwind CSS configuration
- `postcss.config.js` - PostCSS configuration for Tailwind

## Working with Content

- Add new blog posts as Markdown files in `docs/blog/`
- Update navigation in `mkdocs.yml` when adding new sections
- Images go in `docs/assets/` and are referenced with relative paths
- Custom CSS modifications go in `docs/stylesheets/extra.css`
- Tailwind CSS changes require rebuilding with `npx tailwindcss -i ./docs/stylesheets/input.css -o ./docs/stylesheets/output.css --watch` during development

## Deployment Process

The site deploys to GitHub Pages via the `gh-pages` branch:
1. Content is written in Markdown in the `docs/` directory
2. `./build.sh` generates the static site in the `site/` directory
3. `./publish.sh` pushes the built site to the `gh-pages` branch
4. GitHub Pages serves the site from the `gh-pages` branch to nikubaba.com
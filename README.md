# resume  
online resume  
  
Resume link:https://mr901.github.io/resume/  
YAML Checking: https://www.yamllint.com/  
  
## Ribbon-based multi-section UI (optional)

This site now supports an optional ribbon at the top that lets visitors switch between:

- Overview (`_data/overview.md`)
- Personal Value Statement (`_data/cover_letter.md`)
- Experience + Accomplishments (from `_data/data.yml`)
- Downloads (`_data/downloadables/`)

### Enable the ribbon

1. Ensure `_data/data.yml` exists. This is always required.
2. Add `_data/ribbon.yml` with the following structure (defaults provided in repo):

```yaml
enabled: true
default: experience
sections:
  - key: overview
    title: "Overview"
    type: markdown
    file: _data/overview.md
    enabled: true
  - key: personal_value_statement
    title: "Personal Value Statement"
    type: markdown
    file: _data/cover_letter.md
    enabled: true
  - key: experience
    title: "Experience + Accomplishments"
    type: resume
    enabled: true
  - key: downloads
    title: "Downloads"
    type: downloads
    dir: _data/downloadables
    enabled: true
```

If `enabled: false` or `_data/ribbon.yml` is missing, the site renders the legacy single-page resume from `_data/data.yml`.

### Notes

- Markdown files listed in the config are served because `_config.yml` includes `'_data/overview.md'` and `'_data/cover_letter.md'` in `include:`.
- Files placed under `_data/downloadables/` will appear in the Downloads section and can be downloaded.
- You can link directly to a section using a query parameter, e.g. `?section=overview`.

## Local Preview

### Preferred: Dev Container (no host setup)

If you use VS Code, the Dev Container provides a ready-to-run Jekyll environment with LiveReload.

1. Open this folder in VS Code
2. Reopen in Container (Dev Containers extension)
3. Run:

```bash
jekyll serve --livereload --host 0.0.0.0
```

Then open: http://localhost:4000

### Native Jekyll (host machine)

Follow these steps to run this site locally with Jekyll on your machine.

#### Prerequisites (Ubuntu/Debian)

```bash
sudo apt update && sudo apt install -y ruby-full build-essential zlib1g-dev
```

#### Install Jekyll and Bundler

```bash
sudo gem install jekyll bundler
```

#### Serve the site

```bash
cd /home/mohit/Documents/new_age/__resume__/resume
jekyll serve --livereload --host 0.0.0.0
```

Then open: http://localhost:4000

#### Tips

- Faster rebuilds: add `--incremental`
- If you later add a `Gemfile`:

```bash
bundle install
bundle exec jekyll serve --livereload --host 0.0.0.0
```

#### Troubleshooting

- "jekyll: command not found": re-open your terminal after installing Ruby/gems, or ensure the gem bin path is on `PATH`.
- Port in use: change the port, e.g. `jekyll serve -P 4001`.

  
## Doc Version  
Font: Arial  
Color Palette: Ivory and Charcoal (#ECE9E1 and #3D3D3D)  
https://designshack.net/articles/graphics/resume-color-schemes/  
QR code generator: https://express.adobe.com/tools/qr-code-generator  
  
# MR901 Career Portfolio (Jekyll Resume)

- Site: `https://mr901.github.io/resume/`
- YAML Lint: `https://www.yamllint.com/`

## Features
- Jekyll + Markdown + GitHub Pages
- Ribbon-based multi-section UI (optional)
- Responsive, print-friendly layout
- Content driven by `_data/data.yml`

## Ribbon Navigation (Optional)
The top ribbon lets visitors switch between sections like Career Journey, Personal Value Statement, Resume, and Downloads. Configure it via `_data/ribbon.yml`.

Example minimal config:
```yaml
enabled: true
default: experience
sections:
  - key: career_journey
    title: "Career Journey"
    type: markdown
    file: _data/career_journey.md
    enabled: true
  - key: personal_value_statement
    title: "Personal Value Statement"
    type: markdown
    file: _data/personal_value_statement.md
    enabled: true
  - key: experience
    title: "Detailed Curriculum Vitae"
    type: resume
    enabled: true
  - key: downloads
    title: "Downloads"
    type: downloads
    dir: assets/for_downloads
    enabled: true
```

Notes:
- Link directly to a section with `?section=<key>`.
- Markdown files listed under `sections[*].file` must be included in `_config.yml` → `include:`.

## Quick Customization (Cheat Sheet)
- Style type: pills | rounded | square | minimal
- Size: xs | sm | md | lg
- Alignment: left | center | right | space-between | space-around
- Shadow: sm | md | lg | xl
- Mobile stack: `responsive.mobile_stack: true`
- Colors: set `style.background`, `style.text` or rely on `site.theme_color` in `_config.yml`.

Popular presets:
```yaml
# Professional & Clean
style: { type: rounded, size: sm, alignment: left, shadow: md }

# Modern & Friendly
style: { type: pills, size: md, alignment: center, shadow: lg }

# Minimal & Modern
style: { type: minimal, size: md, alignment: center, shadow: sm }
```

## Local Preview
Preferred (Dev Container):
```bash
jekyll serve --livereload --host 0.0.0.0
```

Native Jekyll (Ubuntu/Debian):
```bash
sudo apt update && sudo apt install -y ruby-full build-essential zlib1g-dev
sudo gem install jekyll bundler
jekyll serve --livereload --host 0.0.0.0
```

Tips: use `--incremental` for faster rebuilds. If a Gemfile is added later:
```bash
bundle install
bundle exec jekyll serve --livereload --host 0.0.0.0
```

## Development & Validation
YAML validation and common workflows are available:
```bash
# Validate YAML
ruby validate_yaml.rb

# Makefile helpers
make validate   # validate YAML
make build      # validate + build
make serve      # validate + serve with livereload
make clean      # clean generated files
```

Debugging tips:
- YAML errors: run `ruby validate_yaml.rb` (watch for colons, indentation, unescaped characters). Avoid HTML comments in YAML.
- Markdown runtime errors: see styled boxes in the UI and check browser console.
- SCSS changes may require a Jekyll restart.

## Error Handling Highlights
- Frontend shows parsing/loading errors with details (and raw content view).
- Build-time YAML validation prevents cryptic Jekyll failures.

## Print & Accessibility
- Print hides the ribbon and prints only the active section.
- Keyboard navigation and ARIA attributes are implemented for the ribbon.
- Respects `prefers-reduced-motion`.

## Content Sources
- Resume: `_data/data.yml`
- Markdown sections: `_data/career_journey.md`, `_data/personal_value_statement.md`
- Downloads: `assets/for_downloads/`

## Pointers for Doc Version  
- Font: Arial  
- Color Palette: Ivory and Charcoal (#ECE9E1 and #3D3D3D)  
- [Stylish Resume Color Schemes](https://designshack.net/articles/graphics/resume-color-schemes/)  
- [QR code generator](https://express.adobe.com/tools/qr-code-generator) 
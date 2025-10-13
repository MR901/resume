# resume  
online resume  
  
Resume link:https://mr901.github.io/resume/  
YAML Checking: https://www.yamllint.com/  
  
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
  
Online Resume
=============

This repository is a Jekyll-based online resume.

Quick start (Dev Container)
---------------------------

Use the Visual Studio Code Dev Container for a zero-setup environment with Jekyll and LiveReload pre-configured.

Requirements::

  - Docker (Engine or Desktop)
  - VS Code with the "Dev Containers" extension

Steps::

  1. Open the folder in VS Code.
  2. When prompted, "Reopen in Container" (or use Command Palette: Dev Containers: Reopen in Container).
  3. After the container builds, start the site:

     jekyll serve --livereload --host 0.0.0.0

  4. Open http://localhost:4000

Notes:

- Ports 4000 (Jekyll) and 35729 (LiveReload) are forwarded automatically.
- If a Gemfile is added later, Bundler will install gems on container creation.

Alternative: Native Jekyll (host machine)
----------------------------------------

If you prefer not to use a container, follow the native setup documented in ``LOCAL_PREVIEW.md``.

Local preview commands (summary)::

  sudo apt update && sudo apt install -y ruby-full build-essential zlib1g-dev
  sudo gem install jekyll bundler
  cd /home/mohit/Documents/new_age/__resume__/resume
  jekyll serve --livereload --host 0.0.0.0

Troubleshooting
---------------

- If port 4000 is in use, specify another port: ``jekyll serve -P 4001``.
- Slow rebuilds? Add ``--incremental``.


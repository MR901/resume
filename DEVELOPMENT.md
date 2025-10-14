# Development Guide

This document explains the development workflow and tools for this Jekyll resume site.

## 🛠️ Available Tools

### YAML Validation

Before building the site, you can validate all YAML files to catch syntax errors early:

```bash
# Validate YAML files
ruby validate_yaml.rb
```

**Features:**
- ✓ Checks all `.yml` and `.yaml` files in `_data/` directory
- ✓ Shows detailed error messages with line numbers and context
- ✓ Colored output (if `colorize` gem is installed)

**Example output when errors are found:**
```
✗ _data/data.yml
  Error: could not find expected ':' while scanning a simple key
  Line: 860, Column: 1

  Context:
→  860 | <!--
   861 |         &nbsp;‎ &nbsp;
```

### Building the Site

#### Option 1: Using Makefile (Recommended)

```bash
# Show all available commands
make help

# Validate YAML files only
make validate

# Build the site (validates YAML first)
make build

# Serve the site with live reload (validates YAML first)
make serve

# Clean generated files
make clean
```

#### Option 2: Using build script

```bash
# Build only
./build.sh

# Build and serve
./build.sh --serve
```

#### Option 3: Direct Jekyll commands

```bash
# Build site
jekyll build

# Serve with live reload
jekyll serve --livereload --host 0.0.0.0 --baseurl ""
```

## 🎯 Recommended Workflow

1. **Make changes** to your markdown, YAML, or SCSS files
2. **Validate** YAML files: `make validate` (optional but recommended)
3. **Serve** the site: `make serve`
4. **View** in browser (typically http://localhost:4000)
5. Site auto-reloads on file changes ✨

## 🐛 Debugging Tips

### YAML Syntax Errors

If Jekyll fails to build with a YAML error:

1. Run `ruby validate_yaml.rb` to see detailed error location
2. Common issues:
   - HTML comments (`<!--`) in YAML files (use `#` instead)
   - Missing colons (`:`) after keys
   - Incorrect indentation
   - Unescaped special characters in strings

### Markdown Rendering Issues

If content displays with errors in the browser:

1. Check browser console for JavaScript errors
2. Look for styled error messages showing:
   - **⚠️ Content Parsing Error** (markdown parsing failed)
   - **❌ Content Loading Error** (file fetch failed)
3. Error messages include raw content viewer for debugging

### CSS/Layout Issues

1. Changes to `_sass/*.scss` files require Jekyll restart
2. Check browser DevTools for CSS errors
3. Validate SCSS syntax

## 📝 Common YAML Mistakes

### ❌ Wrong: HTML Comment in YAML
```yaml
name: John Doe
<!-- This is wrong -->
title: Engineer
```

### ✓ Correct: YAML Comment
```yaml
name: John Doe
# This is correct
title: Engineer
```

### ❌ Wrong: Special Characters Unescaped
```yaml
description: This has: a problem
```

### ✓ Correct: Quoted String
```yaml
description: "This has: a problem"
# or
description: This has a problem without colon
```

## 🔧 Error Handling Features

### Frontend Error Display

The ribbon navigation system now includes enhanced error handling:

- **Parsing Errors**: Shows the error message and allows viewing raw content
- **Loading Errors**: Shows attempted URLs and error details
- **Visual Indicators**: Color-coded error boxes (yellow for parsing, red for loading)

### Build-Time Validation

- YAML validation runs before Jekyll build
- Prevents cryptic build failures
- Shows exact error location with context

## 📚 Additional Resources

- [Jekyll Documentation](https://jekyllrb.com/docs/)
- [YAML Syntax Guide](https://yaml.org/spec/1.2/spec.html)
- [Liquid Template Guide](https://shopify.github.io/liquid/)

## 💡 Tips

- Always validate YAML after making changes to `_data/` files
- Use `make serve` for development with auto-reload
- Check browser console for client-side errors
- Keep YAML files properly indented (2 spaces recommended)


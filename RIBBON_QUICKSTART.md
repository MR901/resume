# Ribbon Navigation - Quick Start Guide

Get your ribbon navigation looking professional in 5 minutes!

---

## ⚡ Already Working!

Good news: The ribbon is already configured with professional defaults. You don't need to do anything unless you want to customize it.

---

## 🎨 Quick Customization (2 minutes)

Edit `_data/ribbon.yml` and change these lines:

### Change Button Style
```yaml
style:
  type: pills    # Try: pills, rounded, square, or minimal
```

### Change Button Size
```yaml
style:
  size: md       # Try: xs, sm, md, or lg
```

### Center the Buttons
```yaml
style:
  alignment: center  # Try: left, center, right, space-between, space-around
```

### Make Shadow More Prominent
```yaml
style:
  shadow: lg     # Try: sm, md, lg, or xl
```

---

## 🎯 Popular Presets

### Modern & Friendly
```yaml
style:
  type: pills
  size: md
  alignment: center
  shadow: lg
```

### Professional & Clean
```yaml
style:
  type: rounded
  size: sm
  alignment: left
  shadow: md
```

### Minimal & Modern
```yaml
style:
  type: minimal
  size: md
  alignment: center
  shadow: sm
```

---

## 📱 Mobile Optimization

Want buttons to stack vertically on mobile?

```yaml
responsive:
  mobile_stack: true
```

---

## 🎨 Custom Colors

Override your theme color:

```yaml
style:
  background: "#1a1a1a"  # Dark background
  text: "#ffffff"        # White text
```

Or leave commented out to use your site's theme color!

---

## ➕ Add a New Section

```yaml
sections:
  - key: my_section           # Unique identifier
    title: "My New Section"   # Button text
    type: markdown            # Type: markdown, resume, or downloads
    file: _data/my_file.md    # Path to markdown file
    enabled: true             # Turn on/off
    description: "Optional tooltip text"
```

---

## 🔧 Common Adjustments

### More Space Between Buttons
```yaml
style:
  gap: 24px
```

### Bigger Padding
```yaml
style:
  padding_y: 16px
```

### Disable Animations
```yaml
animation:
  enabled: false
```

---

## 📖 Full Documentation

- **RIBBON_CONFIG.md** - Complete configuration reference
- **RIBBON_STYLES.md** - Visual style guide with examples
- **RIBBON_IMPROVEMENTS.md** - What changed and why

---

## 🚀 That's It!

Your ribbon navigation is now:
- ✅ Professional looking
- ✅ Fully responsive
- ✅ Accessible
- ✅ Customizable

Save `_data/ribbon.yml`, refresh your site, and enjoy!

---

## ❓ Need More Help?

1. Check **RIBBON_STYLES.md** for visual examples
2. Read **RIBBON_CONFIG.md** for all options
3. Look at the examples in each guide
4. Browser console shows helpful errors

---

## 💡 Pro Tips

- **Start simple:** Use the defaults, then customize
- **Test mobile:** Always check on small screens
- **Less is more:** 3-5 sections is ideal
- **Brand colors:** Match your personal brand
- **Accessibility:** Use `lg` size if your audience needs it


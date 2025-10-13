# Ribbon Navigation - Visual Style Guide

A quick reference for choosing the right style for your ribbon navigation.

---

## Button Styles

### 🔵 Pills (`type: pills`)
**Fully rounded buttons**
```
┌─────────────┐  ┌──────────────┐  ┌─────────┐
│   Overview  │  │  Experience  │  │ Contact │
└─────────────┘  └──────────────┘  └─────────┘
```
**Best for:** Modern, friendly websites | Startups | Creative portfolios

---

### 🔷 Rounded (`type: rounded`) *DEFAULT*
**Slightly rounded corners**
```
┌─────────────┐  ┌──────────────┐  ┌─────────┐
│   Overview  │  │  Experience  │  │ Contact │
└─────────────┘  └──────────────┘  └─────────┘
```
**Best for:** Professional portfolios | Business resumes | Balanced look

---

### ▪️ Square (`type: square`)
**Sharp corners**
```
┌─────────────┐  ┌──────────────┐  ┌─────────┐
│   Overview  │  │  Experience  │  │ Contact │
└─────────────┘  └──────────────┘  └─────────┘
```
**Best for:** Formal resumes | Academic CVs | Traditional industries

---

### ➖ Minimal (`type: minimal`)
**Transparent with underline on active**
```
   Overview       Experience      Contact   
   ────────
```
**Best for:** Clean, modern design | Minimalist portfolios | Text-focused

---

## Button Sizes

### Extra Small (`size: xs`)
```
┌─────────┐  Compact, for dense interfaces
│ Section │  Font: 0.75rem, Padding: 0.25rem 0.5rem
└─────────┘
```

### Small (`size: sm`) *DEFAULT*
```
┌──────────┐  Standard size, works well everywhere
│ Section  │  Font: 0.875rem, Padding: 0.375rem 0.75rem
└──────────┘
```

### Medium (`size: md`)
```
┌────────────┐  Better for touch interfaces
│  Section   │  Font: 1rem, Padding: 0.5rem 1rem
└────────────┘
```

### Large (`size: lg`)
```
┌──────────────┐  Excellent for accessibility
│   Section    │  Font: 1.125rem, Padding: 0.625rem 1.25rem
└──────────────┘
```

---

## Alignment Options

### Left (`alignment: left`) *DEFAULT*
```
┌─────┐ ┌─────┐ ┌─────┐
│  A  │ │  B  │ │  C  │                        
└─────┘ └─────┘ └─────┘
```

### Center (`alignment: center`)
```
                ┌─────┐ ┌─────┐ ┌─────┐
                │  A  │ │  B  │ │  C  │
                └─────┘ └─────┘ └─────┘
```

### Right (`alignment: right`)
```
                        ┌─────┐ ┌─────┐ ┌─────┐
                        │  A  │ │  B  │ │  C  │
                        └─────┘ └─────┘ └─────┘
```

### Space Between (`alignment: space-between`)
```
┌─────┐            ┌─────┐            ┌─────┐
│  A  │            │  B  │            │  C  │
└─────┘            └─────┘            └─────┘
```

### Space Around (`alignment: space-around`)
```
   ┌─────┐         ┌─────┐         ┌─────┐
   │  A  │         │  B  │         │  C  │
   └─────┘         └─────┘         └─────┘
```

---

## Shadow Depths

### Small (`shadow: sm`)
```
┌──────────┐
│ Section  │
└──────────┘  Subtle elevation
 ▒
```

### Medium (`shadow: md`) *DEFAULT*
```
┌──────────┐
│ Section  │
└──────────┘  Moderate depth
 ▒▒
```

### Large (`shadow: lg`)
```
┌──────────┐
│ Section  │
└──────────┘  Prominent shadow
 ▒▒▒
```

### Extra Large (`shadow: xl`)
```
┌──────────┐
│ Section  │
└──────────┘  Deep shadow
 ▒▒▒▒
```

---

## Complete Style Combinations

### 🎨 Style 1: Modern Startup
```yaml
style:
  type: pills
  size: md
  alignment: center
  shadow: lg
```
**Look:** Friendly, approachable, modern
**Use for:** Tech startups, creative agencies, designers

---

### 💼 Style 2: Corporate Professional
```yaml
style:
  type: rounded
  size: sm
  alignment: left
  shadow: md
  background: "#1a1a1a"
  text: "#ffffff"
```
**Look:** Polished, business-like, trustworthy
**Use for:** Business consultants, finance, executives

---

### 🎓 Style 3: Academic Formal
```yaml
style:
  type: square
  size: sm
  alignment: left
  shadow: sm
```
**Look:** Traditional, formal, serious
**Use for:** Academic CVs, researchers, professors

---

### ✨ Style 4: Minimalist Clean
```yaml
style:
  type: minimal
  size: md
  alignment: center
  shadow: sm
```
**Look:** Clean, modern, uncluttered
**Use for:** Writers, artists, minimalists

---

### 🎯 Style 5: Bold & Accessible
```yaml
style:
  type: pills
  size: lg
  alignment: space-around
  shadow: xl

responsive:
  mobile_stack: true
```
**Look:** Large, clear, accessible
**Use for:** Public-facing roles, accessibility focus

---

### 🏢 Style 6: Traditional Business
```yaml
style:
  type: square
  size: sm
  alignment: space-between
  shadow: md
  background: "#2c3e50"
  text: "#ecf0f1"
```
**Look:** Established, reliable, professional
**Use for:** Law, accounting, traditional industries

---

## Color Schemes

### Default (Theme Color)
```yaml
style:
  # background: (uses site theme_color)
  # text: (automatically white)
```

### Dark Mode
```yaml
style:
  background: "#1a1a1a"
  text: "#ffffff"
```

### Blue Professional
```yaml
style:
  background: "#1e3a8a"
  text: "#ffffff"
```

### Green Fresh
```yaml
style:
  background: "#0eb322"
  text: "#ffffff"
```

### Purple Creative
```yaml
style:
  background: "#7c3aed"
  text: "#ffffff"
```

### Gray Neutral
```yaml
style:
  background: "#4b5563"
  text: "#ffffff"
```

---

## Responsive Behavior

### Desktop (Default)
```
┌─────────────────────────────────────┐
│ ┌─────┐ ┌─────┐ ┌─────┐ ┌─────┐    │
│ │  A  │ │  B  │ │  C  │ │  D  │    │
│ └─────┘ └─────┘ └─────┘ └─────┘    │
└─────────────────────────────────────┘
```

### Mobile (Wrapped)
```
┌──────────────────┐
│ ┌─────┐ ┌─────┐ │
│ │  A  │ │  B  │ │
│ └─────┘ └─────┘ │
│ ┌─────┐ ┌─────┐ │
│ │  C  │ │  D  │ │
│ └─────┘ └─────┘ │
└──────────────────┘
```

### Mobile (Stacked) - `mobile_stack: true`
```
┌──────────────────┐
│ ┌──────────────┐ │
│ │      A       │ │
│ └──────────────┘ │
│ ┌──────────────┐ │
│ │      B       │ │
│ └──────────────┘ │
│ ┌──────────────┐ │
│ │      C       │ │
│ └──────────────┘ │
│ ┌──────────────┐ │
│ │      D       │ │
│ └──────────────┘ │
└──────────────────┘
```

---

## Active State Indicators

### Pills, Rounded, Square
```
┌─────────┐  ┌─────────┐  ┌─────────┐
│ Section │  │ Section │  │ Section │ ← Active (darker, underline)
└─────────┘  └───────── ┘  └─────────┘
               ─────────
```

### Minimal
```
 Section     Section     Section
             ─────────
             ↑ Active (underline)
```

---

## Quick Decision Tree

1. **What's your industry?**
   - Tech/Creative → Pills
   - Business/Professional → Rounded
   - Academic/Traditional → Square
   - Minimalist/Design → Minimal

2. **Who's your audience?**
   - General public → lg size
   - Professional peers → sm or md
   - Tech-savvy → Any size

3. **What's your style?**
   - Modern & bold → Pills + lg shadow
   - Clean & simple → Minimal + sm shadow
   - Professional → Rounded + md shadow
   - Traditional → Square + sm shadow

4. **How many sections?**
   - 2-3 sections → center alignment
   - 4-5 sections → left or space-between
   - 6+ sections → Consider reducing or left alignment

---

## Testing Your Style

After updating `_data/ribbon.yml`:

1. **Desktop:** Check alignment and spacing
2. **Mobile:** Test wrapped vs stacked layout
3. **Tablet:** Verify middle-ground behavior
4. **Keyboard:** Tab through buttons
5. **Print:** Preview print layout

---

## Pro Tips

✅ **DO:**
- Match button style to your industry
- Use larger sizes for accessibility
- Test on actual devices
- Consider your brand colors
- Keep 3-5 sections max

❌ **DON'T:**
- Mix too many styles
- Use tiny buttons
- Overcomplicate with too many sections
- Forget mobile testing
- Ignore accessibility

---

## Need Help Choosing?

**Not sure which style to use?** Start with:

```yaml
style:
  type: rounded      # Safe, professional choice
  size: sm          # Works everywhere
  alignment: left   # Traditional, expected
  shadow: md        # Subtle depth
```

Then customize from there based on your needs!


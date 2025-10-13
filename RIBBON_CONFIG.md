# Ribbon Navigation Configuration Guide

The ribbon navigation system provides a professional, accessible, and highly configurable tabbed interface for your resume website.

## Table of Contents
- [Basic Configuration](#basic-configuration)
- [Visual Styling](#visual-styling)
- [Responsive Behavior](#responsive-behavior)
- [Animation Settings](#animation-settings)
- [Section Types](#section-types)
- [Examples](#examples)

---

## Basic Configuration

Edit `_data/ribbon.yml` to configure the ribbon navigation.

### Core Settings

```yaml
# Enable or disable the ribbon navigation
enabled: true

# Default section to show on page load
default: experience
```

---

## Visual Styling

### Button Style Types

Choose from four button styles:

```yaml
style:
  type: rounded  # Options: 'pills', 'rounded', 'square', 'minimal'
```

- **`pills`** - Fully rounded buttons (modern, friendly)
- **`rounded`** - Slightly rounded corners (balanced, professional)
- **`square`** - Sharp corners (formal, traditional)
- **`minimal`** - Transparent buttons with underline on active (clean, modern)

### Button Sizes

```yaml
style:
  size: sm  # Options: 'xs', 'sm', 'md', 'lg'
```

- **`xs`** - Extra small (compact interfaces)
- **`sm`** - Small (default, works well for most cases)
- **`md`** - Medium (better for touch interfaces)
- **`lg`** - Large (excellent for accessibility)

### Alignment

```yaml
style:
  alignment: left  # Options: 'left', 'center', 'right', 'space-between', 'space-around'
```

- **`left`** - Buttons aligned to the left
- **`center`** - Buttons centered
- **`right`** - Buttons aligned to the right
- **`space-between`** - Equal space between buttons
- **`space-around`** - Equal space around buttons

### Shadow Depth

```yaml
style:
  shadow: md  # Options: 'sm', 'md', 'lg', 'xl'
```

Adds depth to the ribbon navbar:
- **`sm`** - Subtle shadow
- **`md`** - Moderate shadow (default)
- **`lg`** - Prominent shadow
- **`xl`** - Deep shadow

### Custom Colors

Override the theme colors for the ribbon:

```yaml
style:
  background: "#0eb322"  # Custom background color
  text: "#ffffff"        # Custom text color
```

Leave commented out to use the site's `theme_color` from `_config.yml`.

### Spacing

```yaml
style:
  padding_y: 10px  # Vertical padding
  padding_x: 0     # Horizontal padding (0 uses container default)
  gap: 16px        # Gap between buttons
```

---

## Responsive Behavior

### Mobile Stack

Stack buttons vertically on mobile devices:

```yaml
responsive:
  mobile_stack: false  # Set to true to stack buttons on mobile
```

### Mobile Sticky

Control whether the ribbon remains sticky on mobile:

```yaml
responsive:
  mobile_sticky: true  # Set to false to disable sticky behavior on mobile
```

---

## Animation Settings

### Enable/Disable Animations

```yaml
animation:
  enabled: true     # Enable smooth transitions
  duration: 0.3     # Duration in seconds
```

Animations include:
- Fade-in effect when switching sections
- Smooth button hover effects
- Scroll-to-top animation
- Active state transitions

**Note:** Users with `prefers-reduced-motion` enabled will automatically have animations disabled.

---

## Section Types

### Markdown Sections

Display markdown content from files:

```yaml
sections:
  - key: overview
    title: "Career Journey"
    type: markdown
    file: _data/overview.md
    enabled: true
    description: "A narrative overview of my professional journey"
```

### Resume Section

Display the full resume with all components:

```yaml
sections:
  - key: experience
    title: "Detailed Curriculum Vitae"
    type: resume
    enabled: true
    description: "Complete work history, education, and skills"
```

### Downloads Section

Display downloadable files from a directory:

```yaml
sections:
  - key: downloads
    title: "Downloads"
    type: downloads
    dir: assets/for_downloads  # Directory containing downloadable files
    enabled: true
    description: "Downloadable documents and resources"
```

---

## Examples

### Example 1: Minimal Modern Style

```yaml
style:
  type: minimal
  size: md
  alignment: center
  shadow: sm
  gap: 24px
  padding_y: 12px
```

### Example 2: Formal Professional Style

```yaml
style:
  type: square
  size: sm
  alignment: left
  shadow: md
  background: "#1a1a1a"
  text: "#ffffff"
```

### Example 3: Friendly Accessible Style

```yaml
style:
  type: pills
  size: lg
  alignment: center
  shadow: lg
  gap: 20px
  padding_y: 16px

responsive:
  mobile_stack: true
```

### Example 4: Clean Business Style

```yaml
style:
  type: rounded
  size: sm
  alignment: space-between
  shadow: md
  padding_y: 10px
  gap: 12px
```

---

## Accessibility Features

The ribbon navigation includes several accessibility enhancements:

1. **ARIA Labels** - All buttons have proper aria-labels
2. **Keyboard Navigation** - Full keyboard support (Enter and Space keys)
3. **Screen Reader Announcements** - Section changes are announced
4. **Focus Indicators** - Visible focus states for keyboard navigation
5. **Semantic HTML** - Proper role attributes and tabpanel structure
6. **Reduced Motion** - Respects `prefers-reduced-motion` user preference

---

## URL Parameters

The ribbon automatically maintains the current section in the URL:

```
https://yoursite.com/resume?section=overview
```

This allows:
- Direct linking to specific sections
- Browser back/forward navigation
- Bookmarking specific sections

---

## Print Behavior

When printing:
- The ribbon navigation bar is hidden
- Only the currently active section is printed
- Full page width is used for content

---

## Tips for Best Results

1. **Keep section titles short** - Long titles may wrap on mobile
2. **Use descriptive descriptions** - They appear as tooltips on hover
3. **Test on mobile** - Try both stacked and non-stacked layouts
4. **Consider accessibility** - Use larger sizes if your audience needs it
5. **Match your brand** - Use custom colors that align with your personal brand
6. **Less is more** - 3-5 sections work best for usability

---

## Troubleshooting

### Buttons Not Showing
- Ensure `enabled: true` is set for both the ribbon and each section
- Check that section titles are properly quoted

### Styles Not Applying
- Make sure `_sass/_ribbon.scss` is imported in `_sass/_default.scss`
- Clear your browser cache
- Check browser console for errors

### Markdown Not Loading
- Verify file paths are correct relative to site root
- Ensure markdown files are included in `_config.yml` under `include:`
- Check browser console for 404 errors

---

## Need More Help?

- Review the example configurations above
- Check the browser console for errors
- Ensure all YAML syntax is correct (proper indentation, no tabs)


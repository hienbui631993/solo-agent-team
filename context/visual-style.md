# Visual style

*Updated by: you + Designer. The designer and analyst read this before making any visual.*

All visuals follow the **Linen design system** (Material 3 Expressive, warm clay palette, Google Sans Flex).
- Tokens: `design/tokens.css`. Components: `design/components.css`.
- Full reference: https://claude.ai/artifact/CQUvUA7JpRZZmKGxnG6GnG

## Rules
- **Colors:** role tokens only (`var(--primary)`, `var(--surface-container-low)`, …). Never raw hex, no new colors, no gradients.
- **Text:** `on-surface` for main text, `on-surface-variant` for secondary. Text on a fill uses its "on-" partner (e.g. `on-primary-container` on `primary-container`).
- **One accent per screen or slide:** one filled element in `primary`. Everything else tonal or outlined.
- **Layers:** page `surface` → cards `surface-container-low` → highlight card `primary-container`. Use the surface ladder, not shadows.
- **Shapes:** pills/buttons `--shape-full`, chips `--shape-small`, cards `--shape-medium`, one hero card `--shape-extra-large-increased`.
- **Type:** Google Sans Flex, using the `.display-*`, `.headline-*`, `.title-*`, `.body-*`, `.label-*` classes. At most one display style per screen. Sentence case, never all caps.
- **Spacing:** only `--space-1,2,3,4,6,8,10,12,16`.
- **Icons:** Material Symbols Rounded, never emoji.
- **Light and dark:** follow the viewer's system; force with `data-theme="dark"` or `"light"` on `<html>`.
- When unsure, choose the calmer option.

## Social slides
Design each slide at **540×675** (or 540×540, 540×960) with the normal Linen type classes, then `zoom: 2` exports it at 1080×1350. See `templates/social-creatives/quote-card.html`.

## Charts
Use one series per chart in `var(--primary)`; split two measures into two charts rather than two colors. Linen's warm roles are too close to tell apart as chart categories (checked with a colorblind validator). Status colors (`--success`, `--error`) only for up/down signals, always with an icon.

## Logo / handle
@yourbrand

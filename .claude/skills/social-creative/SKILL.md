---
name: social-creative
description: Design on-brand social images and carousels (single post, multi-slide carousel, story) as HTML and render them to PNG. Use when asked for a social image, carousel, graphic, or visual for a post.
---

# Social Creative

*Usually run by the **designer** agent. Read `context/` and `sops/approval-rules.md` first.*

## Inputs
- The post text or idea (often from the `content-repurposer` skill output).
- `context/visual-style.md` (Linen design system rules) and `context/brand-voice.md`.
- References in `templates/social-creatives/` (copy the feel, not the layout).

## Steps
1. Pick the format and size (see `templates/social-creatives/README.md`). Default: 1080×1350.
2. Plan the slides: for a carousel, slide 1 = hook, middle = one point per slide, last = call to action. 5–7 slides.
3. Build each slide as a self-contained HTML file based on `templates/social-creatives/quote-card.html`. Keep its Linen token block unchanged. Design at 540×675 with Linen type classes (headline `display-small-emphasized`, body `body-large`) and keep `zoom: 2`. Role tokens only, one `primary` accent per slide, Material Symbols icons, sentence case.
4. Render each slide to PNG: `scripts/render.sh <slide>.html <slide>.png 1080 1350`.
5. Look at every PNG. Fix any text that overflows, is too small, or touches the edges. Re-render.
6. **Optional, if an image-generation MCP server is connected:** generate a background photo or illustration and place it in the HTML. Never generate fake people presented as real customers, or fake screenshots of results.

## Output
Save to `outputs/visuals/YYYY-MM-DD-[topic]/`: the HTML files, the PNGs, and `caption.md` with the post caption.

## Quality check
- Readable on a phone: headline readable at thumbnail size.
- Max ~20 words per slide. Linen role tokens only: no raw hex, gradients or emoji. No spelling mistakes.
- If rendering fails, say so and give the HTML files for the user to open and screenshot.

## Teach the user
After the output, add a short section called **Why I did it this way**: 2–3 lessons in simple English that explain the skill behind the choices. End with one short question that checks the user understood.

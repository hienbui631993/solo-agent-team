---
name: content-repurposer
description: Turn one main idea into a long piece, 5 short posts and 2 short-video scripts. Use when asked to create a week of content or repurpose an idea.
---

# Content Repurposer

*Usually run by the **content-creator** agent. Read `context/` and `sops/approval-rules.md` first.*

## Inputs
- One main idea (tip, story, result, or common question).
- `context/` files, especially brand voice and customer profile.
- Templates in `templates/posts/`.

## Steps
1. Write one longer piece (newsletter or blog, 300–500 words).
2. Pull 5 short posts from it (40–120 words each, each with a different hook, using the `hook-writer` skill angles).
3. Write 2 short-video scripts under 45 seconds: hook in the first 3 seconds, what to show on screen, one call to action.
4. Suggest an image or visual for each short post.

## Output
Save everything to `outputs/content/YYYY-MM-DD-[topic]/`: `long.md`, `posts.md`, `videos.md`.

## Quality check
- Every piece ends with one clear action.
- Follows the Always/Never rules in brand voice. No invented claims.

## Teach the user
After the output, add a short section called **Why I did it this way**: 2–3 lessons in simple English that explain the skill behind the choices. End with one short question that checks the user understood.

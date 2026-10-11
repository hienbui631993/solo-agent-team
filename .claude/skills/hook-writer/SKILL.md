---
name: hook-writer
description: Write 10 hooks (first lines) for a post, ad, email subject or video, and pick the best. Use when asked for hooks, headlines, subject lines or openings.
---

# Hook Writer

*Usually run by the **content-creator** agent. Read `context/` and `sops/approval-rules.md` first.*

## Inputs
- The topic or main idea.
- `context/customer-profile.md` (word bank), `context/brand-voice.md`, `context/swipe-file.md`.

## Steps
Write 10 hooks using different angles:
1. Pain ("Still ... ?")
2. Surprising fact or number (only if true)
3. Common mistake
4. Question the customer asks
5. Before/after
6. Story opening
7. "How to" with a specific result
8. Myth vs truth
9. Direct call-out of the audience
10. Contrarian opinion

## Output
Return the 10 hooks, mark the best 3, and say why. Save winners later to `context/swipe-file.md` once the user reports results.

## Quality check
- Each hook is under 15 words.
- Uses the customer's words, not marketing jargon.

## Teach the user
After the output, add a short section called **Why I did it this way**: 2–3 lessons in simple English that explain the skill behind the choices. End with one short question that checks the user understood.

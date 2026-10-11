---
name: reply-handler
description: Read a prospect's or customer's message and draft the best reply, including objection handling. Use when the user pastes a message and asks how to answer.
---

# Reply Handler

*Usually run by the **sales-assistant** agent. Read `context/` and `sops/approval-rules.md` first.*

## Inputs
- The message the user pasted, plus earlier conversation if available.
- `context/objections.md`, `context/offer.md`.

## Steps
1. In one line: what do they really want or fear?
2. Draft a short, friendly reply that moves them one step closer to yes (a question, a sample, a small next step).
3. If it's an objection, use the best answer in `context/objections.md`, or write a better one.
4. Offer one softer and one more direct version.

## Output
Return the drafts in chat. Add any new objection and its best answer to `context/objections.md`.

## Quality check
- No pressure, no fake urgency, no promises the offer can't keep.

## Teach the user
After the output, add a short section called **Why I did it this way**: 2–3 lessons in simple English that explain the skill behind the choices. End with one short question that checks the user understood.

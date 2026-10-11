---
name: competitor-scan
description: Compare 3–5 competitors' offers, prices, messages and gaps. Use when asked about competitors, positioning, or how to stand out.
---

# Competitor Scan

*Usually run by the **researcher** agent. Read `context/` and `sops/approval-rules.md` first.*

## Inputs
- Competitor names or links from the user, or pages saved in `inputs/`.
- `context/offer.md` and `context/customer-profile.md`.

## Steps
1. For each competitor: who they target, what they promise, price (if public), proof they show, how they get customers.
2. Find what their customers complain about (reviews, comments).
3. Find the gaps: problems nobody solves well, customers nobody serves.

## Output
Save `outputs/research/competitor-scan-YYYY-MM-DD.md` with a comparison table, the top 3 gaps, and 1 recommended way to be different.

## Quality check
- Every claim about a competitor comes from a source you can name.
- If you can't browse, say so and work only from what the user gave you.

## Teach the user
After the output, add a short section called **Why I did it this way**: 2–3 lessons in simple English that explain the skill behind the choices. End with one short question that checks the user understood.

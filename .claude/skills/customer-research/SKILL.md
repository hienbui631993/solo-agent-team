---
name: customer-research
description: Find customers' top problems, exact words and buying triggers from reviews, comments, notes or competitor pages. Use when asked to research customers or update the customer profile.
---

# Customer Research

*Usually run by the **researcher** agent. Read `context/` and `sops/approval-rules.md` first.*

## Inputs
- Raw material from `inputs/` or pasted by the user (reviews, comments, forum posts, call notes, competitor pages).
- Current `context/customer-profile.md`.

## Steps
1. Read all the material. Quote, don't paraphrase.
2. Group what people say into problems. Rank by how painful and how often.
3. Collect the exact phrases customers use (word for word).
4. Note what they've already tried and why it failed.
5. Note what seems to make them buy now (triggers, deadlines, events).

## Output
- Save a report to `outputs/research/customer-research-YYYY-MM-DD.md`: top 5 problems with quotes, a word bank, failed solutions, buying triggers.
- Propose the changes to `context/customer-profile.md`, then apply them after the user agrees.

## Quality check
- Every problem has at least one real quote.
- Nothing is invented. Missing info is marked `[CHECK]`.

## Teach the user
After the output, add a short section called **Why I did it this way**: 2–3 lessons in simple English that explain the skill behind the choices. End with one short question that checks the user understood.

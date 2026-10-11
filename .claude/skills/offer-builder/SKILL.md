---
name: offer-builder
description: Write a clear, low-risk offer with price options and one test to validate it. Use when asked about the offer, pricing, packages, or what to sell.
---

# Offer Builder

*Usually run by the **strategist** agent. Read `context/` and `sops/approval-rules.md` first.*

## Inputs
- `context/customer-profile.md`, `context/offer.md`, `context/business.md`.
- Latest competitor scan in `outputs/research/` if there is one.

## Steps
1. Write the offer in one sentence: who, what result, how fast, what pain or risk you remove.
2. List what's included. Remove anything the customer doesn't care about.
3. Give 3 price options (low, middle, high). Prefer monthly pricing.
4. Suggest one guarantee or risk reducer.
5. Design one small test with a clear pass/fail number (e.g. "2 of 20 prospects ask the price").

## Output
Save `outputs/strategy/offer-YYYY-MM-DD.md`. Propose updates to `context/offer.md`; apply after the user agrees.

## Quality check
- A stranger understands the offer in 5 seconds.
- The price is based on the value of the result, not on hours.

## Teach the user
After the output, add a short section called **Why I did it this way**: 2–3 lessons in simple English that explain the skill behind the choices. End with one short question that checks the user understood.

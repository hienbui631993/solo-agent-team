---
name: outreach-writer
description: Rank leads and write short, personal first messages and follow-ups. Use when asked to do outreach, prospecting, cold or warm messages.
---

# Outreach Writer

*Usually run by the **sales-assistant** agent. Read `context/` and `sops/approval-rules.md` first.*

## Inputs
- A lead list (CSV in `inputs/` or pasted) with any notes about each lead.
- `context/offer.md`, `context/customer-profile.md`, `templates/messages/`.

## Steps
1. Rank the leads: best fit and clearest need first. Say why in one line each.
2. For each of the top 20: write a first message under 80 words that mentions one specific, true detail about them.
3. Write one follow-up for 3 days later.
4. Add a tracking row for each lead.

## Output
Save `outputs/outreach/YYYY-MM-DD-batch.md` (messages) and `outputs/outreach/leads-tracker.csv` (lead, channel, sent date, follow-up date, reply, next step).

## Quality check
- No message could be sent to anyone else unchanged.
- If you don't know a real detail about a lead, write `[CHECK: add detail]` instead of inventing one.
- The user sends the messages, not you.

## Teach the user
After the output, add a short section called **Why I did it this way**: 2–3 lessons in simple English that explain the skill behind the choices. End with one short question that checks the user understood.

---
name: weekly-scorecard
description: Update the weekly scorecard, calculate key ratios, and name the one weakest step to fix. Use when the user shares weekly numbers or asks how the business is doing.
---

# Weekly Scorecard

*Usually run by the **analyst** agent. Read `context/` and `sops/approval-rules.md` first.*

## Inputs
- This week's numbers: reached, leads, conversations, sales, money in, money out, clients lost.
- `context/scorecard.md` (history).

## Steps
1. Add the new row to `context/scorecard.md`.
2. Calculate: leads per sale, conversion at each step, cost per customer, profit, change vs last week.
3. Find the ONE weakest step in the funnel.
4. Give one specific fix for it and the number to watch next week.
5. Flag money risks (low cash, unpaid invoices, rising costs).

## Output
Save `outputs/reports/scorecard-YYYY-MM-DD.md` with the numbers, the weakest step, and the fix.

## Quality check
- Explain every number simply. Never guess missing numbers; ask for them.

## Teach the user
After the output, add a short section called **Why I did it this way**: 2–3 lessons in simple English that explain the skill behind the choices. End with one short question that checks the user understood.

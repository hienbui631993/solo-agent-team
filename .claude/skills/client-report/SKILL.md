---
name: client-report
description: Write a simple monthly report for a client: what was done, results, what's next. Use when asked for a client report or monthly update.
---

# Client Report

*Usually run by the **analyst** agent. Read `context/` and `sops/approval-rules.md` first.*

## Inputs
- The client's numbers for the month (pasted or in `inputs/`).
- What was delivered this month.
- `templates/reports/monthly-client-report.md`.

## Steps
1. Fill in the template. Compare with last month where possible.
2. Explain each number in one plain sentence.
3. Name what worked best and one change for next month.
4. If the client is happy, add a natural referral ask at the end.
5. Flag any warning signs (falling numbers, slow replies, late payment) to the user, not in the report.

## Output
Save `outputs/reports/[client]-YYYY-MM.md`.

## Quality check
- No jargon. A busy owner understands it in 2 minutes.

## Teach the user
After the output, add a short section called **Why I did it this way**: 2–3 lessons in simple English that explain the skill behind the choices. End with one short question that checks the user understood.

---
name: weekly-review
description: Run the weekly review and daily plan: what was done, what worked, lessons, next priorities, and the user's weakest skill. Use for 'plan my day', 'weekly review', or 'what should I focus on'.
---

# Weekly Review

*Usually run by the **chief-of-staff** agent. Read `context/` and `sops/approval-rules.md` first.*

## Inputs
- `tasks/board.md`, `context/scorecard.md`, `context/decisions-and-lessons.md`, `context/business.md` (goal).
- Recent files in `outputs/`.

## Steps
**Daily plan:** pick the 3 most important tasks for today, each under 30 minutes, most valuable first. At least one must be a direct marketing or sales action.

**Weekly review:**
1. What got done, and what didn't.
2. What worked and what didn't (with numbers from the scorecard).
3. Write 3 lessons in `context/decisions-and-lessons.md`.
4. Set next week's top 3 priorities and add them to `tasks/board.md`.
5. Name the user's weakest skill this week and give one small exercise.

## Output
Daily plan: in chat. Weekly review: save `outputs/reviews/week-YYYY-MM-DD.md`.

## Quality check
- Be direct. If the user is avoiding the important work (selling, outreach), say so kindly.

## Teach the user
After the output, add a short section called **Why I did it this way**: 2–3 lessons in simple English that explain the skill behind the choices. End with one short question that checks the user understood.

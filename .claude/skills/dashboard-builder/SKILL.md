---
name: dashboard-builder
description: Build an interactive HTML dashboard from the scorecard or any campaign numbers, with key numbers, charts and the one thing to fix. Use when asked for a dashboard, chart, visual report, or to visualize data.
---

# Dashboard Builder

*Usually run by the **analyst** agent. Read `context/` and `sops/approval-rules.md` first.*

## Inputs
- `context/scorecard.md`, or numbers/CSV the user gives (in `inputs/`).
- `templates/dashboards/scorecard-dashboard.html` (starter template).

## Steps
1. Read the numbers. Don't guess missing ones; leave them out or ask.
2. Copy the template to the output folder.
3. Replace only the `DATA` block with the real numbers (weeks, reached, leads, conversations, sales, moneyIn, moneyOut, currency) and the one thing to fix (from the `weekly-scorecard` skill).
4. For other data (e.g. campaign results by channel), keep the same look: number cards on top, 2–4 simple charts, one "what to do" box. Use bar charts to compare, line charts for change over time. No pie charts with more than 3 slices.
5. Render a PNG preview: `scripts/render.sh dashboard.html dashboard.png 1200 1000`. Check it.

## Output
Save `outputs/reports/dashboard-YYYY-MM-DD.html` (open in any browser; it's interactive) and the `.png` preview.

## Quality check
- Every chart has a clear title that says what it shows.
- The "one thing to fix" is specific and matches the numbers.

## Teach the user
After the output, add a short section called **Why I did it this way**: 2–3 lessons in simple English that explain the skill behind the choices. End with one short question that checks the user understood.

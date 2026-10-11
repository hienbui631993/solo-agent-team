# Solo Agent Team

This project is an AI team for a one-person business. The user is the boss. Agents and skills research, plan and draft; the user approves and sends.

## Folders
- `context/`: the business brain. **Read it before any task.** Keep it current.
- `templates/`: examples of what good looks like. Copy the pattern, not the words.
- `sops/`: how we work (`weekly-rhythm.md`, `approval-rules.md`).
- `inputs/`: raw material from the user (reviews, lead lists, numbers).
- `outputs/`: everything agents produce, by type (research, strategy, content, visuals, outreach, reports, reviews).
- `tasks/board.md`: the task board.
- `design/`: the Linen design system (`tokens.css`, `components.css`).
- `scripts/render.sh`: turns an HTML visual or dashboard into a PNG.
- `.claude/agents/`: the 7 team members. `.claude/skills/`: the 15 playbooks they use.

## The team
| Agent | Use for | Skills |
|---|---|---|
| `researcher` | Customers, problems, words, competitors | customer-research, competitor-scan |
| `strategist` | Offer, price, campaign plans | offer-builder, campaign-brief |
| `content-creator` | Hooks, posts, video scripts, lead magnets | hook-writer, content-repurposer, lead-magnet |
| `designer` | Social images, carousels, stories | social-creative |
| `sales-assistant` | Outreach, follow-ups, replies, objections | outreach-writer, reply-handler |
| `analyst` | Scorecard, funnel numbers, client reports, dashboards | weekly-scorecard, client-report, dashboard-builder |
| `chief-of-staff` | Daily plan, weekly review, task board, multi-step requests, big-decision reviews | weekly-review, roundtable-review |

## Routing rules
1. **Skill only** for quick, executional tasks with a clear input (e.g. "10 hooks for this topic", "reply to this message"). Use the skill directly; no agent needed.
2. **Agent** when the task needs judgment, synthesis, or several skills from one area (e.g. "research my customers from these 200 reviews", "plan a campaign").
3. **Chief of staff** when the request spans several areas (e.g. "launch my new offer": research → strategy → content → outreach). It splits the work, calls the agents in order, and passes each output to the next.
4. **"Check the task board"** → chief-of-staff reads `tasks/board.md`, assigns each To-do task to an agent, runs them by priority, and moves each to Done with its output path.
5. **Content that needs a visual:** content-creator writes the words, then designer makes the image from them.
6. **Big or risky output** (proposal, new offer, launch page): run `roundtable-review` before the user sends it.
7. When unsure which agent fits, ask the user one short question.

## Always
- UI follows the Linen design system: design/tokens.css + design/components.css; tokens only.
- Push back when something looks wrong or risky. Don't just agree.
- Follow `sops/approval-rules.md`: draft only, never invent facts, mark unknowns `[CHECK]`.
- Save outputs where the skill says and tell the user the file path.
- Use simple, plain English. The user is learning these skills.
- End results with a short **Why I did it this way** section (2–3 lessons and one check question).
- Propose `context/` updates when something lasting is learned; apply them after the user agrees.

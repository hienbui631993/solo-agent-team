# Solo Agent Team

An AI team for a one-person business, built for **Claude Code**: 6 agents, 12 skills, one shared business brain. Works for any business.

You are the boss. The agents research, plan and draft. You approve and send. Every agent also explains *why* it did things, so you learn the skills as you go.

## How it's built (4 steps)
1. **Map the work:** the jobs a solo business repeats every week (research, offer, content, outreach, replies, numbers, reviews).
2. **One skill per job:** each repeated job is a playbook in `.claude/skills/`.
3. **Group skills into agents:** 6 agents with non-overlapping roles in `.claude/agents/`.
4. **Connect them:** `CLAUDE.md` tells Claude who is on the team and when to use an agent vs. a skill.

## The team
| Agent | Thinks in | Skills |
|---|---|---|
| **researcher** | Evidence and quotes | customer-research, competitor-scan |
| **strategist** | Decisions | offer-builder, campaign-brief |
| **content-creator** | Stories and headlines | hook-writer, content-repurposer, lead-magnet |
| **sales-assistant** | Conversations | outreach-writer, reply-handler |
| **analyst** | Numbers and patterns | weekly-scorecard, client-report |
| **chief-of-staff** | Priorities | weekly-review (+ runs the task board) |

## Folders
```
CLAUDE.md            team list + routing rules
context/             the business brain (read before every task)
templates/           examples of what good looks like
sops/                weekly rhythm, approval rules
inputs/              your raw material (reviews, lead lists, numbers)
outputs/             everything the agents produce
tasks/board.md       the task board
.claude/agents/      6 agents
.claude/skills/      12 skills
docs/                the framework, skills research, and Claude.ai versions of the prompts
```

## Get started
1. Install Claude Code (desktop app, VS Code extension, or terminal) and open this folder.
2. Fill in the files in `context/`. Start with `business.md`, `customer-profile.md`, `offer.md`, and `brand-voice.md`. Rough notes are fine.
3. Put any real examples in `templates/` and raw material in `inputs/`.
4. Try it:
   - `@researcher research my customers from the reviews in inputs/`
   - `@strategist write my offer`
   - `@content-creator turn this idea into a week of content: ...`
   - `@sales-assistant write first messages for the leads in inputs/leads.csv`
   - `plan my day` or `check the task board`

## Weekly rhythm
About 1 hour a day. See `sops/weekly-rhythm.md`.

## Not using Claude Code?
Use the copy-paste prompts in `docs/claude-ai-prompts/` inside a Claude.ai Project, with `docs/business-brain-single-file.md` as the project instructions.

## Ideas to add later
- **Notion or Google Sheets task board** instead of `tasks/board.md`, connected through an MCP server.
- **Image generation** for social creatives, through an image MCP server.
- **Remote control** to send tasks to the team from your phone.

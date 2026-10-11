# Solo Agent Team

An AI team for a one-person business, built for **Claude Code**: 7 agents, 15 skills, one shared business brain. Works for any business.

You are the boss. The agents research, plan and draft. You approve and send. Every agent also explains *why* it did things, so you learn the skills as you go.

## How it's built (4 steps)
1. **Map the work:** the jobs a solo business repeats every week (research, offer, content, outreach, replies, numbers, reviews).
2. **One skill per job:** each repeated job is a playbook in `.claude/skills/`.
3. **Group skills into agents:** 7 agents with non-overlapping roles in `.claude/agents/`.
4. **Connect them:** `CLAUDE.md` tells Claude who is on the team and when to use an agent vs. a skill.

## The team
| Agent | Thinks in | Skills |
|---|---|---|
| **researcher** | Evidence and quotes | customer-research, competitor-scan |
| **strategist** | Decisions | offer-builder, campaign-brief |
| **content-creator** | Stories and headlines | hook-writer, content-repurposer, lead-magnet |
| **designer** | Layout and color | social-creative |
| **sales-assistant** | Conversations | outreach-writer, reply-handler |
| **analyst** | Numbers and patterns | weekly-scorecard, client-report, dashboard-builder |
| **chief-of-staff** | Priorities | weekly-review, roundtable-review (+ runs the task board) |

## Folders
```
CLAUDE.md            team list + routing rules
context/             the business brain (read before every task)
templates/           examples of what good looks like
sops/                weekly rhythm, approval rules
inputs/              your raw material (reviews, lead lists, numbers)
outputs/             everything the agents produce
tasks/board.md       the task board
design/              Linen design system (tokens + components)
scripts/render.sh    HTML visual or dashboard -> PNG
.claude/agents/      7 agents
.claude/skills/      15 skills
docs/                the framework, research (incl. how others run agent teams), Claude.ai prompts
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
   - `@designer make a 5-slide carousel from outputs/content/.../posts.md`
   - `@analyst build my dashboard from the scorecard`
   - `plan my day` or `check the task board`

## Visuals
- **Style:** every visual uses the **Linen design system** (warm clay colors, Google Sans Flex, light and dark mode). Tokens and components are in `design/`; the rules are in `context/visual-style.md`.
- **Social images and carousels:** the designer builds each slide as HTML in the Linen style, then turns it into a PNG with `scripts/render.sh`. Needs Node.js. It uses your Google Chrome if installed; otherwise run `npx playwright install chromium` once.
- **Dashboards:** the analyst fills `templates/dashboards/scorecard-dashboard.html` with your numbers. Open the HTML in a browser for an interactive dashboard, or render a PNG.
- **Previews:** `docs/previews/` (social card, dashboard light and dark).
- **Optional AI images:** connect an image-generation MCP server in Claude Code and the designer will use it for backgrounds and illustrations.

**Tip:** start with just 3 agents (researcher, content-creator, sales-assistant). Add the others when you feel a real need. Expect about 2 weeks of correcting them before you fully trust their work.

## Weekly rhythm
About 1 hour a day. See `sops/weekly-rhythm.md`.

## Not using Claude Code?
Use the copy-paste prompts in `docs/claude-ai-prompts/` inside a Claude.ai Project, with `docs/business-brain-single-file.md` as the project instructions.

## Ideas to add later
- **Google Sheets or Notion task board** instead of `tasks/board.md`, connected through an MCP server.
- **Remote control** to send tasks to the team from your phone.

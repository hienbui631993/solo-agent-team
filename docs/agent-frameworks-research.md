# How other people run their business with AI agents

*Researched 11 October 2026. Sources at the bottom.*

## A note on sources
I searched Reddit, Instagram, GitHub, and articles. **Reddit blocks direct access from my tools**, so Reddit posts here come through archive copies and articles that quote them. **Instagram can't be searched without logging in**, so I found nothing from Instagram directly; the creator-style frameworks below are the ones shared on blogs, GitHub and YouTube. Treat the results as "what people publicly share", not a full survey.

---

## The 6 setups people use

### 1. The "AI Council": one agent per department
**Who:** Aaron Sneed, a solo founder in defense tech ([Business Insider via AOL](https://www.aol.com/news/im-solo-founder-ai-agents-155452345.html)).
- About **15 custom agents** (built as custom GPTs): chief of staff, HR, finance, legal, PR, security, engineering, supply chain, IT and more.
- Says it saves **about 20 hours a week**.
- **What's special:**
  - He trains agents to **push back**. "I don't want a bunch of yes agents."
  - **Roundtable review:** he gives one important document (like a proposal) to all agents at once so they catch mistakes and made-up facts.
  - It took **about 2 weeks of training** before he trusted each agent. At first it was slower than doing the work himself.
  - A human lawyer still caught something the legal agent missed.

### 2. The "AI company": CEO agent + specialists
**Who:** a tutorial using the open-source orchestrator Paperclip with Claude Code ([MindStudio](https://www.mindstudio.ai/blog/build-multi-agent-company-paperclip-claude-code)).
- **4 agents:** CEO (breaks down goals, delegates, reviews), Researcher, Marketer, Designer.
- Agents share **one folder**: each writes its output to a subfolder; the CEO reads it and assigns the next step.
- Use the **smartest model for the CEO**, faster models for the specialists.
- **Lessons:** keep roles narrow; start with **2 agents** (CEO + one specialist) and add more slowly; log everything; add human approval before anything customer-facing.

### 3. The "AI marketing team" in Claude Code (the video you sent)
- **4 steps:** map your weekly tasks → one skill per task → group skills into agents with no overlap → connect them with routing rules in `CLAUDE.md`.
- **5 agents, 12 skills:** data analyst, content creator, market researcher, creative designer, campaign strategist.
- Folders: **context** (brand voice, offer, strategy), **templates** (examples of good work), **outputs**.
- **Skills for quick tasks, agents for tasks that need thinking.**
- A task board the agents can pick work from, and remote control from a phone.

### 4. The "skills library": one shared context file + many skills
**Who:** the most popular open-source marketing skills pack, [coreyhaines31/marketingskills](https://github.com/coreyhaines31/marketingskills) (about 54,000 GitHub stars), plus similar packs ([OneWave AI](https://github.com/onewave-ai/claude-skills), [OpenClaudia](https://github.com/OpenClaudia/openclaudia-skills), [ai-marketing-claude](https://github.com/zubair-trabzada/ai-marketing-claude), [claude-marketing](https://github.com/thatrebeccarae/claude-marketing)).
- No big agent team. Instead: **about 50 skills** (copywriting, cold email, pricing, lead magnets, referrals, churn, SEO, ads…).
- **One foundation file** (`product-marketing`) holds your product, audience, positioning and voice. **Every skill reads it first.**
- A [solopreneur guide built on these packs](https://www.aibuilderclub.com/blog/claude-code-for-solopreneurs-skills-guide) stacks them in 5 layers: foundation → getting customers → converting → operations → scaling. Its advice: **skip the scaling layer until you have customers.**

### 5. The "starter kit": orchestrator + skills + memory
**Who:** an agency guide to running a business on Claude Code ([GrowwStacks](https://growwstacks.com/blog/claude-code-for-business-run-90-percent-with-ai-agents/)).
- **3 parts:** an orchestrator that assigns tasks, a skills library, and a memory file (`CLAUDE.md`) with business context.
- Connect tools (email, calendar, CRM) through MCP.
- Note: its "80–90% automated" claims come from a vendor selling its services, so treat them as marketing.

### 6. The "simple tool stack" (what most Reddit users actually do)
**Who:** a popular post in r/AiForSmallBusiness ([archived copy](https://reddit.sentinel-team.org/posts/1rfqbjn/snapshots/2026-02-27T17%3A02%3A05.77742Z)).
- No agent framework at all: Notion AI, Claude (trained on their writing style in a Project), Todoist, a meeting note-taker, a voice-to-text tool, Zapier.
- **Top comments agreed:** a few tools connected well beat many tools. One commenter asked the key question: **"Which tool actually increased revenue, not just productivity?"**

---

## A research view
A 2025 academic paper on AI "digital co-founders" ([arXiv](https://arxiv.org/html/2511.09533v1)) describes 3 stages for a solo business:
1. **Shape the idea:** agents scan the market and compare ideas.
2. **Test it cheaply:** agents help build tiny tests (landing pages, pre-sales, pilots) and analyze feedback.
3. **Scale with systems:** turn repeated work into routines, then automate, with an orchestrator agent and a human in charge.

It also warns about **decision fatigue, depending too much on AI, losing your authentic voice, and burnout** from always-on automation. Note: it's a theory paper, not tested with real businesses yet.

---

## What they all have in common

| Pattern | Who uses it | In our repo? |
|---|---|---|
| **One shared context / memory** that every agent reads first | All 6 | ✅ `context/` |
| **A boss agent** that plans, delegates and reviews | Council, AI company, starter kit | ✅ `chief-of-staff` |
| **Narrow roles, no overlap** | Council, AI company, video | ✅ 7 agents |
| **Skills = reusable playbooks** | Video, skills library, starter kit | ✅ 15 skills |
| **Shared folder for outputs** | AI company, video | ✅ `outputs/` |
| **Human approves customer-facing work** | All | ✅ `sops/approval-rules.md` |
| **Agents push back, not "yes agents"** | Council | ✅ added to every agent |
| **Roundtable review of big documents** | Council | ✅ `roundtable-review` skill |
| **Start small, add agents later** | AI company, skills guide | ✅ README: start with 3 |
| **Templates of "what good looks like"** | Video, skills library | ✅ `templates/` |
| **Connect live tools (CRM, email, analytics) via MCP** | Skills library, starter kit | ⏳ later |

## 5 lessons worth copying
1. **Context first.** Every source says the same: without a good shared context file, output is generic. Fill in `context/` before anything else.
2. **Expect a training period.** Plan about 2 weeks of correcting agents before you trust them.
3. **Make agents disagree.** Ask for concerns, not compliments.
4. **Start with 2–3 agents**, not 7. Add one when you feel a real need.
5. **Measure revenue, not just time saved.** The best question from Reddit: did it bring in money?

---

## Sources
- [Business Insider (via AOL): "I'm a solo founder with 15 AI agents"](https://www.aol.com/news/im-solo-founder-ai-agents-155452345.html)
- [MindStudio: Build a multi-agent company with Paperclip and Claude Code](https://www.mindstudio.ai/blog/build-multi-agent-company-paperclip-claude-code)
- [coreyhaines31/marketingskills on GitHub](https://github.com/coreyhaines31/marketingskills)
- [OneWave AI claude-skills](https://github.com/onewave-ai/claude-skills) · [OpenClaudia skills](https://github.com/OpenClaudia/openclaudia-skills) · [ai-marketing-claude](https://github.com/zubair-trabzada/ai-marketing-claude) · [claude-marketing](https://github.com/thatrebeccarae/claude-marketing)
- [AI Builder Club: Claude Code for Solopreneurs, the 15-skill stack](https://www.aibuilderclub.com/blog/claude-code-for-solopreneurs-skills-guide)
- [GrowwStacks: Claude Code for business](https://growwstacks.com/blog/claude-code-for-business-run-90-percent-with-ai-agents/)
- [Reddit r/AiForSmallBusiness, archived post on solo AI tool stacks](https://reddit.sentinel-team.org/posts/1rfqbjn/snapshots/2026-02-27T17%3A02%3A05.77742Z)
- [arXiv: Digital Co-Founders, solo business via agentic AI](https://arxiv.org/html/2511.09533v1)
- [Anthropic: Claude Code subagents docs](https://docs.anthropic.com/en/docs/claude-code/sub-agents)

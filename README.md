# The Solo Agent Team: an AI agent framework for any one-person business

**What it is:** a team of 9 AI agents. Each one covers part of the 12 solopreneur skills. You are the boss: you set direction, approve work, and decide. The agents do the research, drafting, and checking.

**Bonus:** every agent also **teaches you** while it works. It explains *why* it made each choice. So you fill your knowledge gaps while the business runs.

---

## 1. The 4 rules of the framework

1. **One shared brain.** All agents read from and write to one "Business Brain" document. Without it, each agent forgets and repeats mistakes.
2. **Each agent has one job.** A clear role, clear inputs, and a clear output. An agent that does everything does nothing well.
3. **You approve anything that goes out.** Agents draft. You send. Nothing reaches a customer without your yes.
4. **Start by hand, automate later.** Run each agent manually first. Only automate a step after it works well 5 times in a row.

---

## 2. The team

| # | Agent | Skills it covers | Main output | How often |
|---|---|---|---|---|
| 0 | **Chief of Staff** | Self-management, learning fast | Daily plan, weekly review | Daily |
| 1 | **Researcher** | Customer research, niche | Customer profile, problem list, real customer words | Weekly |
| 2 | **Strategist** | Offer, pricing | Offer page, price options, tests to run | Monthly |
| 3 | **Copywriter** | Copywriting | Hooks, messages, ads, page text | Daily |
| 4 | **Content Producer** | Content, short video | Posts and video scripts from 1 main idea | Weekly |
| 5 | **Lead Hunter** | Lead generation, lead capture | Lead list, outreach drafts, lead magnet ideas | Daily |
| 6 | **Sales Assistant** | Selling by text | Reply drafts, objection answers, follow-ups | Daily |
| 7 | **Client Success** | Delivery quality, retention, referrals | Quality checks, client reports, referral asks | Weekly |
| 8 | **Analyst** | Numbers, money basics | Scorecard, money check, "fix this first" | Weekly |

### How work flows between them

```
Researcher ──► Strategist ──► Copywriter ──► Content Producer ──► (you approve) ──► posted
    ▲                              │
    │                              ▼
    │                         Lead Hunter ──► (you approve) ──► outreach sent
    │                              │
    │                              ▼
    │                       Sales Assistant ──► (you approve) ──► client signed
    │                              │
    │                              ▼
    │                       Client Success ──► happy client, referrals
    │                              │
    └──────── Analyst ◄────────────┘
                 │
                 ▼
         Chief of Staff ──► your daily plan + what to improve
```

The loop: **Research → Offer → Words → Attention → Sales → Delivery → Numbers → Improve.** The Analyst's findings go back to the Researcher and Strategist, so the system gets better every week.

---

## 3. The Business Brain (shared memory)

One document (Google Doc, Notion page, or the instructions of a Claude Project). Every agent reads it first.

| Section | What goes in it | Who updates it |
|---|---|---|
| **Customer profile** | Who they are, their problems, the exact words they use | Researcher |
| **Offer** | What you sell, price, guarantee, what's included | Strategist |
| **Brand voice** | Tone, words to use, words to never use | You + Copywriter |
| **Swipe file** | Best hooks, posts, and messages that worked | Copywriter, Content Producer |
| **Objections** | Common "no" reasons and the best answers | Sales Assistant |
| **Playbooks** | Step-by-step checklists for each repeated job | All agents |
| **Scorecard** | Weekly numbers | Analyst |
| **Decisions and lessons** | What you tried, what happened, what you'll do next | Chief of Staff |

---

## 4. Your rhythm (about 1 hour a day)

**Daily (30–60 min)**
1. Chief of Staff: "What are my 3 most important tasks today?"
2. Lead Hunter + Copywriter: draft today's outreach. You review and send.
3. Sales Assistant: draft replies to anyone who answered. You review and send.

**Weekly (2 hours, same day each week)**
1. Analyst: scorecard and "the 1 number to fix".
2. Researcher: new customer insights.
3. Content Producer: next week's content from 1 main idea.
4. Client Success: check client work and send reports.
5. Chief of Staff: weekly review, then update the Business Brain.

**Monthly (2 hours)**
1. Strategist: review offer and price, plan 1 test.
2. Chief of Staff: "What did I learn? Which skill is my weakest now?"

---

## 5. Three levels of building it

| Level | What it looks like | Tools | When |
|---|---|---|---|
| **1. Manual** | One Claude Project with the Business Brain. You paste each agent's prompt into a chat. | Claude, Google Docs | Start here, weeks 1–4 |
| **2. Connected** | Your data lives in one sheet. Automations trigger agents and save results. | + Google Sheets or Airtable, n8n or Make | After you have paying customers |
| **3. Autonomous** | Agents run on a schedule and only ask you to approve. | + agent tools that run on their own, a dashboard | When the steps are proven and repeated |

Most people should stay at Level 1 for the first month. Automating a process that doesn't work yet only makes mistakes faster.

---

## 6. The agent prompts

Each agent has its own file in [`agents/`](agents/). Every prompt ends with the **teaching rule**, so the agent explains why it did things and you learn the skill.

| Agent | Prompt |
|---|---|
| 0. Chief of Staff | [agents/00-chief-of-staff.md](agents/00-chief-of-staff.md) |
| 1. Researcher | [agents/01-researcher.md](agents/01-researcher.md) |
| 2. Strategist | [agents/02-strategist.md](agents/02-strategist.md) |
| 3. Copywriter | [agents/03-copywriter.md](agents/03-copywriter.md) |
| 4. Content Producer | [agents/04-content-producer.md](agents/04-content-producer.md) |
| 5. Lead Hunter | [agents/05-lead-hunter.md](agents/05-lead-hunter.md) |
| 6. Sales Assistant | [agents/06-sales-assistant.md](agents/06-sales-assistant.md) |
| 7. Client Success | [agents/07-client-success.md](agents/07-client-success.md) |
| 8. Analyst | [agents/08-analyst.md](agents/08-analyst.md) |

**How to use:** create one Claude Project called "My Business". Fill in [`business-brain.md`](business-brain.md) and paste it into the project instructions. Then start each chat with the agent's prompt.

---

## 7. Set it up this week

| Day | Do this | Done when |
|---|---|---|
| 1 | Create the Business Brain doc with the 8 empty sections | The doc exists |
| 2 | Run the **Researcher**. Fill in the Customer profile | Profile has real customer words |
| 3 | Run the **Strategist**. Fill in the Offer | You have a one-sentence offer and a price |
| 4 | Write your Brand voice. Run the **Copywriter** for 10 hooks | Swipe file started |
| 5 | Run the **Lead Hunter**. Make a list of 20 leads and drafts | 20 drafts ready |
| 6 | Send your first outreach. Use the **Sales Assistant** on replies | First messages sent |
| 7 | Run the **Analyst** and **Chief of Staff** weekly review | First scorecard and lessons written |

After week 1, add the **Content Producer** and **Client Success** agents when you have something to post and someone to serve.

---

## 8. Common mistakes with agents

- **No shared brain.** Agents give generic answers. *Fix: always update the Business Brain.*
- **Trusting output without checking.** AI can be wrong or make things up. *Fix: you approve everything that goes out.*
- **Automating too early.** *Fix: 5 good manual runs before automating.*
- **Too many agents at once.** *Fix: start with 3 (Researcher, Copywriter, Lead Hunter), add the rest when needed.*
- **Using agents to avoid the hard part.** Agents draft, but sending messages and making offers is still your job.

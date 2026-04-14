# PIPELINE.md — Research → Plan → Execute Pipeline

*Solomon OS operating pipeline. Every initiative flows through these three gates before execution.*

---

## The Three Gates

```
┌─────────────────────────────────────────────────────────────┐
│  GATE 1: RESEARCH                                           │
│  What does the market want? What are competitors doing?    │
│  What are the risks?                                        │
│  Output: Written research doc with sources. No assumptions. │
│  Gatekeeper: CEO (Zo)                                      │
└─────────────────────────────────────────────────────────────┘
                            ↓
┌─────────────────────────────────────────────────────────────┐
│  GATE 2: PLAN                                               │
│  What are we doing, in what order, by when, and how do     │
│  we know if it's working?                                  │
│  Output: Written plan with timeline, metrics, and owner.    │
│  Gatekeeper: CEO (Zo) → Joseph approves before Gate 3      │
└─────────────────────────────────────────────────────────────┘
                            ↓
┌─────────────────────────────────────────────────────────────┐
│  GATE 3: EXECUTE                                            │
│  Build it. Run it. Track it. Report it.                    │
│  Output: Live system, daily/weekly reports.                 │
│  Gatekeeper: CoS schedules. Agents execute. CEO monitors.  │
└─────────────────────────────────────────────────────────────┘
```

---

## Gate 1 — Research

**Who:** CEO (Zo) commissions research. Sub-agents (Hermes, CashClaw) execute research tasks.

**Trigger:** Any new initiative — revenue stream, feature, client, content campaign.

**Process:**
1. Commission task via task queue or directly to sub-agent
2. Sub-agent researches and writes findings to `solomon-vault/research/[category]/[topic].md`
3. Research doc includes: market size, competitor analysis, risks, opportunities, sources
4. CEO reviews research doc, marks complete in `solomon-vault/research/INDEX.md`

**Quality bar:** At least 3 sources. No speculation without flagging it as such.

---

## Gate 2 — Plan

**Who:** CEO (Zo) writes the plan based on research.

**Trigger:** Research doc complete and approved.

**Process:**
1. CEO writes plan using `solomon-vault/templates/PLAN.md`
2. Plan includes: objective, strategy, tactics, timeline, success metrics, budget, owner
3. CEO presents plan to Joseph via Telegram
4. Joseph approves or pivots — CEO revise until approved
5. Approved plan filed to `solomon-vault/plans/[category]/[name].md`
6. Phase plan updated (if applicable)

**Quality bar:** Joseph must be able to read this and know exactly what we're doing, why, and how we'll know if it worked.

---

## Gate 3 — Execute

**Who:** CoS (Zo) schedules. Sub-agents execute within approved parameters.

**Trigger:** Joseph-approved plan.

**Process:**
1. CoS breaks plan into weekly and daily tasks
2. Tasks added to master calendar and task queue
3. Sub-agents execute assigned tasks
4. Daily report: what was built, what's running, what's blocked, what's next
5. Weekly review: progress vs plan, blockers resolved, plan updated if needed
6. Major milestone → Joseph update with results

**Quality bar:** Execution matches plan. Any deviation from plan re-gates at Gate 2.

---

## What Doesn't Need the Full Pipeline

These operational tasks run on autopilot without Gates 1-2:

- Daily content posting via Russell Tuna (once content direction is approved)
- Routine CashClaw audit delivery to existing clients
- Responding to customer inquiries as the client's AI agent
- Updating JackConnect workflows within approved scope
- Weekly business review (scheduled, recurring)
- Daily report to Joseph (scheduled, recurring)

**Always needs Joseph approval before Gates 1-2:**
- Any new revenue stream
- Any new client contract
- Any cold outreach or public-facing content
- Any spending of money
- Any partnership or affiliate agreement

---

## Index

All research docs: `solomon-vault/research/INDEX.md`
All plans: `solomon-vault/plans/INDEX.md`
All phases: `solomon-vault/PHASES/`

---

*Last updated: 2026-04-14*

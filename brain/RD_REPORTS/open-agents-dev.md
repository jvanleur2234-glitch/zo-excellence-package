# RD Report: Open-Agents.dev (Open Harness by Vercel)

**Research date:** 2026-04-14
**Researched by:** Zo 1
**Recommendation:** SKIP — not a fit for Solomon OS, possible dev tool

---

## What It Is

Cloud-based autonomous coding agent platform from Vercel Labs.
Open source: `vercel-labs/open-harness` (3.2k stars, Apache 2.0)

**Core capabilities:**
- Spawns coding agents in isolated Vercel sandboxes
- Web browsing, file read/write/edit, shell commands, git commit
- Durable workflows — resumable after disconnects/restarts
- Multi-model support via Vercel AI Gateway
- Auto-provisions ephemeral environment per session, auto-hibernates on inactivity

---

## How It Works

1. User describes what to build
2. Agent spins up in Vercel sandbox with full filesystem + network access
3. Agent writes code, runs tests, fixes errors autonomously
4. On finish: auto-commits and pushes to git
5. Cost: ~$0.02/min for sandbox time

**Key differentiator vs other coding agents:** Infrastructure is built-in and production-grade. No local setup, no environment config.

---

## Comparison to What We Have

| | Open Harness | Solomon OS Agents |
|---|---|---|
| **Purpose** | Coding agent | Business automation |
| **Execution** | Vercel sandbox | Local + Telegram |
| **Multi-agent** | No (single coding agent) | Yes (Russell Tuna, Hermes, CashClaw, JackConnect) |
| **Self-hosted** | No (Vercel-locked) | Yes |
| **Business workflows** | No | Yes (leads, SEO, email, content) |
| **Revenue model** | Vercel platform | AI Employee SaaS |

---

## What We'd Use It For

Could use as a **dev acceleration tool** — if we need to rapidly build and ship a feature, Open Harness could prototype fast without eating local resources.

Not useful as part of the product. Our clients (realtors, service SMBs) don't want a coding agent — they want AI employees that handle their business tasks.

---

## Decision

**SKIP** — not aligned with Solomon OS mission.

**Low-priority future:** Consider as a dev tool if we need fast prototyping help. Not operational infrastructure.

---

## Sources

- https://open-agents.dev
- https://github.com/vercel-labs/open-harness

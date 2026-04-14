# RD Report: build-your-own-openclaw

**Queue Date:** 2026-04-13
**Stars:** ~700 (czl9707/build-your-own-openclaw)
**License:** Not specified (tutorial repo)
**Status:** CLONED — fully analyzed

---

## What It Is

An **18-step progressive tutorial** teaching how to build AI agents from scratch, ending in a lightweight OpenClaw implementation. Each step = a working codebase with a README explaining the design decisions. Reference implementation = "pickle-bot."

**Architecture (18 steps):**
- Phase 1: Single Agent (chat loop → tools → skills → persistence → slash commands → compaction → web tools)
- Phase 2: Event-Driven (event bus → config hot-reload → channels → websocket)
- Phase 3: Multi-Agent (routing → cron/heartbeat → multi-layer prompts → post-message-back → agent dispatch)
- Phase 4: Production (concurrency control → memory)

---

## What We'd Use It For

### 1. Solomon Bus Architecture Refactor
The event-driven architecture (Step 07) is a cleaner version of what Solomon Bus tries to do. The EventBus pub/sub with Workers pattern is proven and well-documented. Currently Solomon Bus uses `bus.sh` polling + file-based messages. The OpenClaw approach (async Queue + subscriber handlers) would be more robust.

**Action:** Study `src/mybot/core/eventbus.py` and `src/mybot/server/agent_worker.py` for the refactor.

### 2. Standardize SKILL.md + AGENT.md + CRON.md
Every step in this repo uses the same conventions we already have:
- `SKILL.md` = YAML frontmatter + markdown body (we use this)
- `AGENT.md` = agent definition (we use `AGENTS.md`)
- `CRON.md` = cron definition

The tutorial shows the canonical pattern. We should formalize our conventions using these as the reference.

**Action:** Create `/home/workspace/Skills/SKILL.md` template based on Step 02. Create `AGENT.md` template based on Step 11's `cookie` agent example.

### 3. Multi-Agent Routing (Step 11)
Their routing table uses regex bindings with tiered specificity (exact match → wildcard → regex). We route by Telegram channel. This approach is more flexible — e.g. route all messages from `telegram:@foo` to one agent, `telegram:@bar` to another.

**Action:** Study `src/mybot/core/routing.py` — could upgrade Solomon Bus routing.

### 4. Agent Dispatch (Step 15)
The `subagent_dispatch` tool + `DispatchEvent`/`DispatchResultEvent` pattern is exactly what we need for `/fork`. Currently Russell Tuna's `/fork` calls Zo API directly. The event-driven dispatch would make it more robust and observable.

### 5. Concurrency Control (Step 16)
How they handle "too many agents running at once." Relevant for Russell Tuna's `/fork` (up to 10 parallel agents) — what happens at 11?

---

## Comparison to What We Have

| Concern | Solomon OS | OpenClaw Tutorial |
|---|---|---|
| Agent definition | AGENTS.md | AGENT.md |
| Skills | SKILL.md ✅ | SKILL.md ✅ |
| Scheduling | create_agent (Zo) | CRON.md + CronWorker |
| Bus | bus.sh (file polling) | EventBus (async pub/sub) |
| Routing | channel-based | regex bindings + tiered specificity |
| Memory | AGENTS.md files | cookie agent (memories/topics/) |
| Multi-agent dispatch | Zo API calls | DispatchEvent + future-based async |
| Concurrency | ? | semaphore + queue |

---

## Recommendation: SKILL

This is a curriculum, not a codebase to fork. The value is in the **architectural patterns** and **standard conventions**, not the Python code.

**Priority actions for Solomon OS:**
1. **Adopt CRON.md format** for scheduled tasks (cleaner than create_agent for simple cron jobs)
2. **Refactor Solomon Bus** using EventBus pattern from Step 07
3. **Formalize AGENT.md** convention from Step 11's cookie agent
4. **Upgrade /fork** using DispatchEvent pattern from Step 15
5. **Study concurrency** from Step 16 before scaling Russell Tuna's parallel agents

**Do NOT:** Clone this into production. It's a learning reference.

**Files to keep:** `solomon-vault/brain/RD_REPORTS/build-your-own-openclaw.md` (this report)

# ZO OS — Joseph's Multi-Agent Operating System

## What It Is
Zo is Joseph's AI OS. It runs in Zo Computer, has full tool access, and orchestrates work in parallel using multiple agents (both synchronous sub-agents and scheduled background agents).

## Core Architecture

### Agent Types
1. **Zo (Primary)** — The main AI you talk to. Coordinates everything. Delegates to sub-agents.
2. **Zo Sub-Agents (Forked)** — Instant parallel agents spawned via the `/zo/ask` API. Each gets a complete context package. They work simultaneously on different tasks, report back, and Zo synthesizes.
3. **Hermes** — The backend execution layer. Runs skills, automations, 94+ skill arsenal.
4. **Russell Tuna** — Joseph's personal AI on Telegram. Streams responses, manages memory.
5. **Scheduled Agents** — Background agents triggered by rrules (daily, hourly, on-event).

### How Parallelism Works
Zo forks itself via the `/zo/ask` API — each fork is an independent agent with:
- The full task description + context
- File paths to relevant workspace files
- Any specific skills or instructions needed
- What to report back when done

**Pattern:**
```
Joseph: "Here's 5 repos to analyze"
Zo → Fork Agent 1: Analyze repo A
Zo → Fork Agent 2: Analyze repo B  
Zo → Fork Agent 3: Analyze repo C
Zo → Fork Agent 4: Analyze repo D
Zo → Fork Agent 5: Analyze repo E
(all run in parallel)
Zo → Synthesizes all 5 reports → One coherent response to Joseph
```

### When to Fork
- 2+ tasks that are independent (no shared state between them)
- Research queries that can run simultaneously
- Repo analyses, comparisons, builds that don't depend on each other
- Content creation (blog posts, videos, social posts) for different platforms
- Lead research across different niches or sources

**Anti-pattern — DON'T fork when:**
- Tasks have dependencies (B depends on output of A)
- Tasks share mutable state (same file, same variable)
- Tasks are trivially small (atomic enough to do inline)

### Context Package (what each fork gets)
Every fork prompt includes:
1. Who Joseph is and what Solomon OS is
2. What the specific task is
3. Relevant brain files to read
4. Relevant skills to use
5. What "done" looks like
6. How to report back

### Memory Architecture
- **Solomon Vault** (brain/): Persistent cross-session memory. Brain files: North Star, Key Decisions, Patterns, Gotchas, Services, Business Ideas, ZO_OS.
- **Session memory**: Each fork works stateless, reports to Zo who synthesizes
- **Bus events**: Sub-agents log to Solomon Bus for audit trail
- **Auto-skill-router**: Front-desk router that decomposes tasks and dispatches to skills
- **GBrain patterns**: Compiled truth + timeline protocol. State sections rewritten, not appended. Entity detection on every message. Dream cycle weekly maintenance.

## GBrain Memory Protocol (integrated April 10, 2026)

Based on garrytan/gbrain (1.4K stars, MIT). These protocols compound Solomon OS memory over time:

### Entity Detection on Every Message
- Fire silently on every Telegram message. Don't block response.
- Detect: people, companies, tools, original ideas (highest value)
- If entity mentioned: check brain first → update or create page
- If original idea: capture user's EXACT phrasing verbatim in brain/originals/
- Commit: `git add brain/ && git commit -m "entity update"` after session

### Brain-First Before Action
Before working on anything: check Solomon Vault for existing context.
- "What do we know about X?" → read brain/ files first
- If gap found → tell Joseph before hallucinating
- External APIs are fallback, not starting point

### Compiled Truth Rewrites
- State sections get REWRITTEN with new evidence (not timeline appends)
- Timeline entries are reverse-chronological, with source attribution
- Never silently resolve contradictions — note both with citations

### Deterministic Before LLM
- Mechanical tasks (URL generation, state tracking, file I/O) → use code/scripts
- LLM for: judgment, synthesis, original writing, complex decisions
- This prevents the "forgets things" failure mode structurally

## Sub-Agents Available to Zo

### Fork Agents (via /zo/ask)
Spawned per-task, stateless, report back. Max ~20 concurrent.

| Agent | When to use | Input | Output |
|-------|-------------|-------|--------|
| Repo Analyzer | Analyze a GitHub repo | repo URL + task | Full analysis + recommendations |
| Skill Builder | Build a Hermes skill from a repo | repo URL + purpose | SKILL.md + scripts installed |
| Lead Researcher | Research leads for a niche | niche + location | Lead list in solomon-vault/work/leads/ |
| Content Writer | Write content for a topic | topic + platform | finished content file |
| Video Producer | Create a video (Manim/TikTok/Reel) | topic + style | video file + metadata |
| Business Analyst | Evaluate a business idea | idea description | viability score + next steps |
| Code Reviewer | Audit codebase | repo or file path | issue list + severity |

### Hermes Skills (permanent agents)
Always available via Hermes:

| Skill | What it does |
|-------|-------------|
| auto-skill-router | Route any task to right skills |
| evolution | Improve skills based on feedback |
| github-deep-dive | Deep research any GitHub repo |
| conversational-builder | Build chatbots / conversational AI |
| master-developer | Full-stack app development |
| flyai | Travel search (flights, hotels, trains) |
| manim-video | 3Blue1Brown-style math animations |
| byterover-* | ByteRover engineering skills |

### Russell Tuna (Telegram bot)
- Lives at t.me/RussellTunaBot
- Streaming responses via Ollama (qwen3:1.7b)
- Reads brain/Services.md + brain/Business Ideas.md at session start
- **Built-in `/fork` command** — forks parallel sub-agents via /zo/ask API (pipe-separated tasks, up to 10)
  - Usage: `/fork task 1 | task 2 | task 3`
  - Each task runs in parallel as an independent agent
  - Results synthesized and reported back
- Great for quick questions, reminders, on-the-go updates

## Workflows

### 5-Item Batch (standard parallel flow)
```
Joseph → Zo: "Work on these 5 things:"
  1. Analyze this repo for client use
  2. Build a skill from this repo
  3. Find leads in this niche
  4. Write a blog post about X
  5. Create a Manim video about Y

Zo forks 5 agents (one per task)
Each agent:
  1. Reads its context package
  2. Executes the task
  3. Writes results to workspace
  4. Reports to Zo

Zo synthesizes all results → One response to Joseph
```

### Repo → Skill Pipeline
```
1. Fork: github-deep-dive on repo URL
2. Fork: skill-builder takes deep-dive output
3. Fork: test the skill in isolation
4. Zo: installs skill to Hermes, updates HERMES_CAPABILITIES.md
5. Zo: reports skill ready
```

### Lead Gen Pipeline
```
1. auto-skill-router decomposes: niche → sources → extraction
2. Fork lead-researcher per source (Google Maps, LinkedIn, Reddit, etc.)
3. Each researcher: finds leads → scores → formats
4. Zo: compiles all leads → dedupes → stores in solomon-vault/work/leads/
5. Zo: reports lead count + quality score
```

## Memory Files (what each agent reads)

### At Session Start
Zo reads (in order):
1. `/home/workspace/solomon-vault/brain/North Star.md` — mission, goals
2. `/home/workspace/solomon-vault/brain/ZO_OS.md` — this file
3. `/home/workspace/MegaPlan/SESSION_SUMMARY.md` — last session recap

### When Routing Tasks
auto-skill-router reads manifest → decomposes → dispatches

### When Building Skills
skill-builder reads:
- source repo
- SKILL.md template
- Hermes skill conventions

## Replication Blueprint (for spawning new Zo instances)

### To replicate Zo:
1. Read all files in `/home/workspace/solomon-vault/brain/`
2. Read `/home/workspace/MegaPlan/` (full context)
3. Read `/home/workspace/hermes-skills/` (skill arsenal)
4. Configure `/zo/ask` API access (ZO_API_KEY)
5. Apply personality from `/home/workspace/SOUL.md` (if present)
6. Load rules from `/home/workspace/AGENTS.md`

### Replication is verified when:
- New instance answers questions about Joseph's business correctly
- New instance knows who Russell Tuna is
- New instance can route tasks using auto-skill-router
- New instance knows where to find things (vault, MegaPlan, skills)
- New instance can build and install a skill from a GitHub URL

## Key Paths Reference
- Solomon Vault (brain): `/home/workspace/solomon-vault/brain/`
- MegaPlan: `/home/workspace/MegaPlan/`
- Hermes Skills: `/home/workspace/hermes-skills/`
- Auto-Skill-Router: `/home/workspace/hermes-skills/auto-skill-router/scripts/router.py`
- Solomon Bus: `/home/workspace/solomon-bus/solomon_bus.py`
- Skills: `/home/workspace/Skills/`
- Russell Tuna: t.me/RussellTunaBot
- /zo/ask API: POST https://api.zo.computer/zo/ask

## Self-Replication Log
- **Created**: Apr 5, 2026 — initial ZO_OS.md design
- **Purpose**: Enable Joseph to give Zo 4-5 repos/ideas and get parallel work back
- **Test**: Next session where Joseph gives multiple items to process
# RD REPORT — Vibe-Skills

**Date:** 2026-04-13
**URL:** https://github.com/foryourhealth111-pixel/Vibe-Skills
**Stars:** 1.6K
**License:** Not clearly stated (open source, appears permissive)
**Slug:** vibe-skills

---

## What It Is

A **340+ skill library** with an intelligent routing system ("Canonical Router") that routes tasks to the right skill automatically — instead of dumping 300 skills and hoping the AI remembers to use them.

Key architecture:
- **Governed workflow:** Clarify → Plan → Execute → Verify (not just skill dumping)
- **M/L/XL execution tiers:** Auto-selects complexity level based on task scope
- **129 governance rules** to prevent conflicts and dangerous operations
- **Universal compatibility:** Claude Code, Codex, Windsurf, OpenClaw, OpenCode, Cursor
- **Skill dispatch:** Multi-agent workflows automatically assign corresponding skills to each agent's lane

---

## Skills Breakdown

| Domain | Skills | Examples |
|--------|--------|---------|
| Requirements & Planning | ~25 | `brainstorming`, `speckit-clarify`, `speckit-plan`, `planning-with-files` |
| Software Engineering | ~30 | `autonomous-builder`, `aios-architect`, `hive-mind-advanced`, `vibe` |
| Debugging & QA | ~30 | `tdd-guide`, `systematic-debugging`, `code-review`, `security-reviewer` |
| Data & ML | ~30 | `senior-ml-engineer`, `exploratory-data-analysis`, `statistical-analysis` |
| Research & Science | ~20 | `literature-review`, `biopython`, `scanpy`, `qiskit` |
| Creative & Media | ~15 | `plotly`, `generate-image`, `video-studio` |
| Compound Workflows | ~15 | `vibe`, `swarm_*`, `hive-mind-advanced` |

Absorbs/bundles: `superpower`, `claude-scientific-skills`, `get-shit-done`, `aios-core`, `spec-kit`, `Agent-S`, `DeepAgent`, and more.

---

## How It Compares to What We Have

**Solomon OS today:**
- Hermes Router (S1/S2/S3) — basic skill routing
- AGENTS.md — system-level instructions
- SOUL.md — personality
- Manual skill activation

**Vibe-Skills adds:**
- 340+ pre-built skills organized by domain
- Governed execution workflow (Clarify → Plan → Execute → Verify)
- Intelligent routing engine (Canonical Router) instead of "remember to use a skill"
- M/L/XL execution tier auto-selection
- Multi-agent coordination (hive-mind-advanced)
- Safety governance (129 rules)

**What Solomon OS does that Vibe-Skills doesn't:**
- Business-layer automation (finding clients, doing work, collecting payment)
- Telegram integration (Russell Tuna Bot)
- Zo API forking (`/fork`)
- Background job runner (persistent across sessions)
- Service monitoring
- Inter-agent bus (Solomon Bus)

---

## What We Could Use It For

1. **Upgrade Hermes Router** — Replace Hermes's basic skill system with Vibe-Skills' Canonical Router for smarter skill dispatch in Solomon OS
2. **Add a Governed Workflow layer** — Hook `vibe`'s Clarify → Plan → Execute → Verify into our business agent workflow for more reliable delivery
3. **Import individual skills into Solomon OS** — 340 skills in categories we don't have yet: `literature-review`, `biopython`, `scanpy`, `qiskit`, `symbolic-math`, `plotly`, etc. could be imported individually
4. **Multi-agent architecture reference** — The `hive-mind-advanced` and `swarm_*` skills are exactly what Solomon Bus is trying to do. Study how Vibe-Skills does it for Solomon Bus improvement.

---

## Recommendation

**SKIP** — for now.

**Reason:** Vibe-Skills is a phenomenal skill library, but it's designed for **AI coding agents** (Claude Code, Codex, etc.). Solomon OS is a **business automation system** — it needs to find clients, do the work, collect payment, not write code. The skill domains (TDD, code review, architecture planning, debugging) are mostly irrelevant to our use case.

**Exception:** If Joseph wants to build a **Zo Code Agent** product (a coding-focused AI agent), Vibe-Skills becomes a core dependency — import the whole library and leverage its Canonical Router + governed workflow + 129 governance rules as the agent's operating system.

**What to study instead:** The `hive-mind-advanced` and `swarm_*` skills for Solomon Bus multi-agent architecture improvements. These are in the compound workflows section and directly applicable. But that's a research task, not a full integration.

**Action:** Store this RD report. If Zo ever moves into coding agents, revisit. The governance engine (129 rules) is particularly impressive and could inform future Hermes skill governance.
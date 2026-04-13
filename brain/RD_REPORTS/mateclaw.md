# RD Report: MateClaw

**URL:** https://github.com/matevip/mateclaw  
**Date:** 2026-04-13  
**Stars:** ~1.3K  
**License:** Apache 2.0  
**Tech Stack:** Java 17+ / Spring Boot 3.5 / Vue 3 / Electron / Spring AI Alibaba  
**Stars:** ~1.3K  

---

## What It Is

A full AI agent operating system — not a chatbot, not a workflow builder. An end-to-end system with:
- **ReAct + Plan-and-Execute agents** that iterate to complete tasks (not one-shot answers)
- **LLM Wiki** that digests raw material into structured, linked, summarized pages
- **3-layer memory lifecycle:** Extract → Consolidate → Dream
- **7 IM channels:** DingTalk, Feishu, WeChat Work, Telegram, Discord, QQ
- **Skill ecosystem:** ClawHub marketplace with installable SKILL.md packages
- **MCP integration:** stdio, SSE, Streamable HTTP transports
- **Full web admin dashboard:** agents, models, tools, skills, channels, security, cron, token usage
- **Electron desktop app:** bundled JRE 21, no Java installation needed
- **Tool guard:** RBAC + approval flows + file-path protection
- **Enterprise auth:** Spring Security + JWT

---

## Core Differentiators

1. **Plan-and-Execute orchestration** — Decompose complex work into ordered steps, execute each, adapt mid-flight. Most competitors (including us) do simple ReAct; MateClaw does structured task planning with dynamic replanning.

2. **LLM Wiki that digests, not just retrieves** — Others index and search. MateClaw turns raw material into structured, linked pages with summaries. Warehouse vs. library.

3. **Java ecosystem** — Spring Boot = enterprise deployment story. One JAR. MySQL in production. Teams already running Spring don't need to adopt a new runtime.

4. **Full multimodal creation** — TTS, STT, image, music, video generation as first-class built-in tools.

5. **Free and open, no asterisks** — Apache 2.0. No token billing, no seat pricing, no feature gating.

---

## Comparison to Solomon OS / Hermes

| Capability | MateClaw | Hermes (ours) |
|---|---|---|
| Agent runtime | ReAct + Plan-Execute (mature) | Basic routing, skills registry |
| Memory | Extract → Consolidate → Dream | AGENTS.md / SOUL.md (primitive) |
| Knowledge base | LLM Wiki digestion (structured) | Flat file notes |
| IM channels | 7 built-in | Telegram (Russell Tuna) |
| Web UI | Full admin dashboard | No UI (CLI) |
| Desktop app | Electron + bundled JRE | No |
| Skill marketplace | ClawHub (live) | Planned |
| Enterprise auth | RBAC + JWT | None |
| Tech stack | Java + Spring | Python + Hono |

---

## What We Steal From It

### 1. Memory Lifecycle Pattern
Our AGENTS.md/SOUL.md files are static. MateClaw's Extract → Consolidate → Dream cycle is how you build compound memory:
- **Extract:** Post-conversation, pull key facts into memory stores
- **Consolidate:** Scheduled job merges碎片 into coherent structures
- **Dream:** LLM reflects on consolidated memory to improve future responses

We should build this into Solomon OS. A nightly "dream" job that reads session summaries, updates AGENTS.md, and generates improved prompts.

### 2. Knowledge Digestion Workflow
The LLM Wiki takes raw URLs, PDFs, notes → digests into structured pages. We have `solomon-vault/raw/` full of session transcripts. We could build a digestion pipeline that turns these into structured `brain/` pages automatically.

### 3. Skill Marketplace Packaging
ClawHub's `SKILL.md` + marketplace model maps exactly to our `Skills/` directory. We should build a public-facing registry — not just internal skills, but a packaging format others can publish and we can install.

### 4. Tool Guard / Approval Flow
RBAC + per-tool approval before execution. When Russell Tuna or Hermes executes dangerous tools (send email, post tweet, spend money), we need an approval queue. MateClaw's HITL (Human-in-the-Loop) pattern is the reference.

---

## What We Don't Adopt

- **Java/Spring Boot** — Wrong stack for our Python/Hono/Zo Computer infrastructure
- **ClawHub as-is** — Fork the marketplace concept, don't integrate with theirs (incompatible SKILL.md variant)
- **Desktop app** — Not aligned with our cloud-first Zo Computer vision

---

## Verdict

**Recommendation: SKILL**

Study MateClaw's memory architecture and skill marketplace patterns. Clone the following into Solomon OS:
1. Nightly memory consolidation agent (dream job)
2. Knowledge digestion pipeline for solomon-vault/raw/
3. Public skill packaging format (compatible with agentskills.io)
4. Tool approval queue for dangerous operations

Do NOT port to Java. Do NOT integrate ClawHub. Extract patterns, leave stack intact.

---

## Files Analyzed

- `/home/.z/workspaces/con_d8HQ6zgAf8q434AC/mateclaw/README.md`
- Project structure reviewed via git clone

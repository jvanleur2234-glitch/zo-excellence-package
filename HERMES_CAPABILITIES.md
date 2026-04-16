# Hermes Capabilities

**Last Updated:** April 8, 2026

## Show Me The Money (April 14, 2026)
- **Repo:** iamzifei/show-me-the-money — 14 skills, CC BY-NC 4.0
- **Cloned:** /tmp/show-me-the-money + 13 skills installed to `/home/workspace/Skills/`
- **What it does:** Full business OS — discover → strategy → build → content → outreach → social → SEO → ads → ops → finance. 14 skills with battle-tested frameworks.
- **Installed skills:**
  - `money-show-me` — router + onboarding
  - `money-discover` — market scanning, demand validation, competitive intelligence
  - `money-strategy` — SWOT, 4P, GTM plan, premise deconstruction
  - `money-diagnose` — business diagnosis when stuck
  - `money-product` — landing page, auth, payments, SEO/GEO, QA canary
  - `money-quality` — code review, security audit, performance gates
  - `money-content` — blog posts, email sequences, video scripts, authenticity audit
  - `money-outreach` — cold email sequences, partnership outreach, lead gen
  - `money-social` — X, LinkedIn, Reddit, Product Hunt management
  - `money-seo` — traditional SEO + GEO (AI search optimization)
  - `money-ads` — Google Ads, Meta Ads, ROAS tracking
  - `money-ops` — 24/7 autonomous ops, business health scoring, canary monitoring
  - `money-finance` — revenue tracking, unit economics, financial reports
- **Key differentiator:** Every phase ends with "Tomorrow's first action: [specific task]" — actionable, not just advice
- **LINK fit:** ★★★★★ — fills every major Solomon OS gap: email outreach, social automation, SEO, ads, finance tracking, 24/7 ops
- **Strategic value:** Russell Tuna = AI worker. Show Me The Money = MBA brain. Together = complete autonomous business.
- **Competitive response:** AutoGTM ($199/mo, launched April 13) has email pipeline + prospect DB but is closed + expensive. We now have equivalent skills, free + open + Telegram-native.
- **RD Report:** `/home/workspace/solomon-vault/brain/RD_REPORTS/show-me-the-money.md`

## Orca Integration (April 11, 2026)
- **Repo:** stablyai/orca — 730 stars, MIT
- **Cloned:** /home/workspace/orca/
- **Key insight:** Git worktrees for parallel agent isolation — Solomon Bus should adopt this pattern
- **Design Mode:** Click any UI element → drops into AI chat. Reference for Solomon Connect.
- **Orca CLI:** `npx skills add https://github.com/stablyai/orca --skill orca-cli`

## asm — agent-skill-manager (April 12, 2026)
- **Repo:** agent-skill-manager/asm — v1.20.0, MIT license
- **Installed:** `/usr/local/bin/asm` (globally via npm)
- **What it does:** npm for AI agent skills. Manages skills across Claude Code, Codex, Cursor, Windsurf, OpenClaw, and 15+ agents from one CLI/TUI. Install, search, audit security, update, and publish skills.
- **SKILL.md created:** `/home/workspace/hermes-skills/asm-skill-manager/SKILL.md`
- **Linked to Hermes:** ✅ `asm link /home/workspace/hermes-skills/asm-skill-manager -p agents`
- **Key commands:**
  - `asm list --flat` — list all skills across all agents
  - `asm search <query>` — search skills by name/description/tool
  - `asm inspect <name>` — detailed skill info
  - `asm audit security <name>` — security audit
  - `asm link <path> -p <agent>` — symlink a skill into an agent
  - `asm stats` — aggregate skill metrics
  - `asm outdated` — show skills with newer versions
- **Use case for Solomon OS:** Wire asm into Hermes so it can manage skills across Russell Tuna, Hermes, and any new AI workers added to the fleet.
- **LINK fit:** ★★★★★ — #skills #cross-agent #hermes #solomon-os

## Hermes Version

## GBrain Integration (April 10, 2026)
- **Repo**: garrytan/gbrain — 1.4K stars, MIT license
- **Forked**: /home/workspace/gbrain
- **What it adds**: Compiled truth + timeline protocol, entity detection on every message, brain-first before action, dream cycle maintenance
- **Patterns integrated into Solomon OS**:
  - Entity detection on every Telegram message (people, companies, tools, original ideas)
  - Brain-first before action (check Solomon Vault before external APIs)
  - Compiled truth rewrites (State sections rewritten, not appended)
  - Deterministic-before-LLM for mechanical tasks (fixes forgetfulness structurally)
  - Dream cycle: weekly maintenance (stale pages, orphan pages, broken links)
- **Status**: Patterns integrated into ZO_OS.md. Full gbrain CLI needs Postgres + pgvector (Supabase or self-hosted).
- **LINK fit**: ★★★★★ — #brain #memory #solomon-os #hermes #openclaw

## NEW — RENU App (April 8, 2026)
- Landing page live at: https://zo.pub/josephv/renu
- Built as static HTML via zopub (Zo Space route updates blocked)
- Full React app code at: /tmp/renu_full.tsx
- Concept: negative thought → AI matches Bible verse → user writes new truth
- Uses Ollama qwen3.5:27b for AI matching (local, free)

## Zo Space Additions (April 10, 2026)
- SEO meta tags (Open Graph + Twitter Cards) added to all 10 articles
- GA4 analytics tracking installed (Measurement ID: configurable via ANALYTICS_GA4_ID secret)
- Email capture API route: `/api/capture-email` → stores leads to `/home/workspace/zo.space-leads/emails.json`
- Lead capture forms added to all 10 articles

## Hermes Workspace (Apr 10, 2026)
- **Repo:** outsourc-e/hermes-workspace — mobile-first React dashboard (PWA) for Hermes
- **What it does:** Chat + files + terminal + memory browser + skills catalog in one UI
- **Already cloned:** /home/workspace/hermes-workspace (forked by jvanleur2234-glitch)
- **Key requirement:** WebAPI backend from outsourc-e/hermes-agent fork (our Hermes is upstream NousResearch — needs swap)
- **Opportunity:** Fork React components → build Solomon OS branded mobile command center

## VoltAgent/awesome-agent-skills (April 12, 2026)
- **Repo:** VoltAgent/awesome-agent-skills — 15.3K stars, MIT
- **Cloned:** /home/workspace/Skills/voltagent-awesome-agent-skills/
- **What it is:** Curated catalog of 1000+ agent skills, NOT installable files. Skills live in their native repos (Claude Code, VoltAgent, Stripe, etc).
- **Key finds for Solomon OS:**
  - **Kim Barrett advertising skills** — direct-response advertising, avatar/offer extraction, headline matrix, objection crusher, full-funnel campaign orchestrator
  - **Corey Haines marketing skills** — programmatic SEO, referral programs, sales enablement, signup flow CRO, social content
  - **Context engineering skills** — multi-agent architectures, memory systems, tool design, evaluation frameworks
  - **n8n automation skills** — workflow patterns, code nodes, expression syntax, MCP tools, node configuration
  - **Binance crypto skills** — crypto market rank, meme rush, token audit, wallet queries
  - **Stripe/Gemini/Supabase official skills** — official API best practices from major dev teams
- **Status:** Reference catalog only. Individual skills are installed from their source repos as needed.
- **LINK fit:** ★★★★☆ — #skills #reference #advertising #marketing #automation

## Hermes Agent Orange Book (April 10, 2026)
- **Repo:** alchaincyf/hermes-agent-orange-book — 17 chapters, 5 parts
- **PDF:** `/home/workspace/hermes-agent-orange-book/Hermes-Agent-The-Complete-Guide.pdf` (1.5MB)
- **English PDF:** Hermes-Agent-The-Complete-Guide-v260407.pdf | **Chinese:** Hermes-从入门到精通-v260407.pdf
- **Author:** HuaShu (花叔) — 300K+ followers, built App Store #1 app entirely with AI
- **Content:** 17 chapters across 5 parts — concepts, core mechanisms, setup, real-world scenarios, deep thinking
- **For:** Anyone who wants to master Hermes agent system
- **Status:** PDF downloaded. Read when ready for deep Hermes mastery.

## Solomon Orchestrator (April 13, 2026)
- **Skill:** `/home/workspace/Skills/solomon-orchestrator/` — Zo-native agent orchestrator
- **What it is:** Complete rewrite of ClaudeClaw patterns for Zo. 6 integrated systems:
  1. **Channel Router** (`solomon-router.ts`) — Telegram polling loop, routes messages to group configs
  2. **Memory Layer** (`solomon-memory.ts`) — daily logs, topic files, searchable archive, auto-archival
  3. **Webhook Triggers** (`solomon-webhook-trigger.ts`) — HTTP server on :5099, HMAC-SHA256 auth, async agent spawning
  4. **Cost Tracker** (`solomon-cost-tracker.ts`) — per-project token + cost tracking, CSV export
  5. **Extension System** (`solomon-extension.ts`) — pluggable beforeAgent/afterAgent/onError hooks
  6. **Group Configs** (`/home/workspace/MegaPlan/configs/groups/`) — per-group model, system prompt, tools, cost limits
- **Group configs:** `default.json`, `ai-staffing.json` (Russell Tuna work), `internal.json` (ops)
- **Start:** `bash /home/workspace/Skills/solomon-orchestrator/start.sh`
- **LINK fit:** ★★★★★ — #orchestrator #russell-tuna #solomon-os #core-infrastructure

## Overview
Hermes is Solomon OS's primary AI agent, built on NousResearch's agent framework with 94 skills.

## Skills Registry

### Design & UI

| Skill | Source | Status | Notes |
|-------|--------|--------|-------|
| `ui-ux-pro-max` | Zo built-in | ✅ | 50+ styles, 161 color palettes |
| **taste-skill** | Leonxlnx/taste-skill, 8.4k stars | ✅ **ADDED 2026-04-14** | High-agency frontend. 3-dial system (DESIGN_VARIANCE, MOTION_INTENSITY, VISUAL_DENSITY). Anti-slop rules. Premium animations. |
| `canvas-design` | Zo built-in | ✅ | Visual art, posters |
| `ui-styling` | Zo built-in | ✅ | shadcn/ui, Tailwind |
| `brand-guidelines` | Zo built-in | ✅ | Anthropic brand colors |

## NEW — TopRank SEO Skills (April 11, 2026)
Cloned from nowork-studio/toprank, installed to Hermes skills registry:
- **seo-analysis-toprank** — Full SEO audit: GSC + PageSpeed + crawl + intent analysis
- **keyword-research-toprank** — Topic clusters + content calendar + keyword prioritization
- **content-writer-toprank** — E-E-A-T blog posts + landing pages with SEO metadata
- **meta-tags-optimizer-toprank** — Title tags, meta descriptions, OG/Twitter cards
- **schema-markup-generator-toprank** — JSON-LD structured data (Article, FAQ, LocalBusiness, etc.)

Note: Ads skills (google-ads/) not installed — require AdsAgent MCP (adsagent.org) which needs separate API key setup.

## Skills Hub Integration (April 11, 2026)
- **Repo:** qufei1993/skills-hub — 704 stars, MIT
- **Cloned:** /home/workspace/skills-hub
- **What it does:** Desktop app (Tauri + Rust + React) that manages Agent Skills centrally and syncs them to 44 AI coding tools via symlinks/copy
- **Supported tools:** Cursor, Claude Code, Windsurf, OpenClaw, Roo Code, Continue, Codex, Gemini CLI, Trae, and 35 more
- **KEY PATTERN:** "Install once, sync everywhere" — central skill repo + per-tool sync
- **LINK fit:** ★★★★★ — perfect for Solomon OS skill management across Hermes, Russell Tuna, and any new AI worker we add
- **Action:** Study the sync architecture and adapt for Solomon OS central skills system

## Connected Tools
- Ollama (local models, free inference)
- Russell Tuna Bot (Telegram)
- Zo Space (hosted pages)
- Stripe (payments)

## Agentic Development Platform
- **Emdash** (YC W26, 3.4K ⭐, Apache 2.0): Parallel coding agents in git worktrees, 23 built-in providers, MCP server, Linear/GitHub/Jira integration. Forked at `/home/workspace/emdash`. Can integrate with Hermes as orchestrator layer.

## WATCH ONCE ENGINE (Apr 11, 2026)

## Notes
- Hermes router running at S1/S2/S3 ✅
- Skills can be added via the ByteRover CLI or manual SKILL.md creation
- All skills follow the standard Hermes SKILL.md formatBrowser Use x Hermes integration — HERMES_CAPABILITIES update
- **Status:** Cloned at `/home/workspace/toprank`. SEO skills use GSC + PageSpeed + CMS APIs. Ads skills use AdsAgent MCP (adsagent.org, free API key). Skill structure (SKILL.md + references/ + evals/) is a good template for building SEO/Ads services into Hermes or the affiliate site.
- **PinchTab** (Apr 11): Self-hosted Browserbase alternative. Running at port 9868 with token `solomon123`. Chromium bund
- **AgentUp**

## NEW — AgentUp (April 12, 2026)
- **Repo:** always-further/AgentUp — 107 stars, Apache 2.0
- **Cloned:** /home/workspace/AgentUp ✅
- **What it does:** Portable, scalable, secure AI agents. Docker-like versioning for AI agents. Define once, run anywhere. A2A (Agent-to-Agent) + MCP support. Built-in auth (OAuth2, JWT, API keys). Iterative + Reactive agent types.
- **Key patterns:** Deterministic routing (code before LLM), async task architecture, plugin ecosystem, agent card auto-discovery
- **LINK fit:** ★★★★☆ — #whitecollar #staffing-agency #solomon-os
- **Status:** Cloned. Active development (386 commits). Good reference for building Solomon OS agent worker framework.

## NEW — token-savior (April 12, 2026)
- **Repo:** Mibayy/token-savior — 269 stars, MIT license
- **Cloned:** /home/workspace/token-savior ✅
- **What it does:** MCP server that saves 97% of AI coding tokens. Structural codebase indexing — reads symbols, not files. 53 tools: find_symbol, get_change_impact, get_function_source, etc.
- **Benchmarks:** 5,074 queries across 137 sessions = 97% token reduction
- **Languages:** Python, TypeScript, Go, Rust, C#, C/GLSL + config formats
- **LINK fit:** ★★★★★ — #hermes #solomon-os #token-optimization
- **Status:** Cloned. Excellent for building Hermes skill optimization pipeline.

## NEW — agent-fetch (April 12, 2026)
- **Repo:** teng-lin/agent-fetch — 254 stars, MIT license
- **Cloned:** /home/workspace/agent-fetch ✅
- **What it does:** Full-content web fetcher for AI agents. Chrome TLS fingerprinting, browser impersonation, multi-strategy extraction (Readability, JSON-LD, Next.js, RSC, WP API). No API keys needed.
- **CLI:** `npx agent-fetch <url>` or `npx agent-fetch crawl <url>`
- **Use cases:** RAG pipelines, NotebookLM input, LLM conversations
- **LINK fit:** ★★★★☆ — #contentpipeline #osint #facelessyoutube
- **Status:** Cloned. Excellent for research pipelines and content ingestion.

## NEW — hermes-agent-self-evolution (April 12, 2026)
- **Repo:** NousResearch/hermes-agent-self-evolution — 1.2K stars, MIT license
- **Cloned:** /home/workspace/hermes-agent-self-evolution ✅
- **What it does:** Evolutionary self-improvement for Hermes Agent. Uses DSPy + GEPA (Genetic-Pareto Prompt Evolution) to optimize skills, prompts, and code. ~$2-10 per optimization run. No GPU training.
- **Phases:** Skills (✅) → Tool descriptions → System prompts → Tool code → Continuous loop
- **Guardrails:** 100% test pass, size limits, semantic preservation, PR review
- **LINK fit:** ★★★★★ — #hermes #evolution #skill-optimization #solomon-os
- **Status:** Cloned. This is a CORE piece of the Hermes self-improvement pipeline.

## NEW — Loophole (April 12, 2026)
- **Repo:** brendanhogan/loophole — 354 stars, MIT license
- **Cloned:** /home/workspace/loophole ✅
- **What it does:** Adversarial moral-legal code stress-tester. Three modes:
  - **Legal:** Build formal legal code from moral principles, then adversarial agents find loopholes (legal but immoral) and overreach (illegal but moral). Judge auto-patches or escalates to human.
  - **Chatbot:** Stress-tests system prompts by running actual jailbreak/refusal attacks against the bot and evaluating responses.
  - **Reverse:** Extracts moral DNA from legal texts, finds contradictions and gaps between stated principles and implied values.
- **Architecture:** Multi-agent adversarial loop (Legislator → Loophole Finder + Overreach Finder → Judge → precedent chain). 3 modes, configurable providers (Anthropic/OpenAI/Ollama), Python 3.12+.
- **Use cases for Solomon OS:**
  - Stress-test Russell Tuna's ethical guidelines
  - Audit content moderation policies for faceless YouTube channel
  - Extract moral framework from business plans
  - System prompt hardening for AI workers
- **LINK fit:** ★★★☆☆ — #ethics #system-prompts #solomon-os
- **Status:** Cloned. Unique concept — adversarial red-teaming for ethics/prompts.

## NEW — Open Multi-Agent (April 12, 2026)
- **Repo:** JackChen-me/open-multi-agent — TypeScript multi-agent framework
- **Cloned:** /home/workspace/open-multi-agent ✅
- **What it does:** One `runTeam()` call from goal to result. Auto task decomposition + parallel execution. 3 deps: @anthropic-ai/sdk, openai, zod. Multi-model support (Claude, GPT, Gemini, Grok, Copilot, Ollama). MCP support in progress. A2A (Agent-to-Agent) protocol.
- **Key patterns:** Deterministic routing (code before LLM), async task architecture, plugin ecosystem, agent card auto-discovery
- **LINK fit:** ★★★★☆ — #multi-agent #typescript #russell-tuna #solomon-os
- **Status:** Cloned. Active development (386 commits). Good reference for building Solomon OS agent worker framework.

## NEW — solomon-skills (April 16, 2026)
- **Repo:** jvanleur2234-glitch/solomon-skills — https://github.com/jvanleur2234-glitch/solomon-skills
- **What it is:** JackConnect skill library in pashov/skills format. 6 skills ready:
  - `real-estate-cma` — CMA report generation
  - `lead-qualifier` — Lead scoring 1-10
  - `market-intel` — Farm area monitoring, new listings, price drops
  - `client-nourisher` — Birthday texts, anniversary notes, SOI nurturing
  - `invoice-generator` — EasyInvoicePDF integration
  - `transaction-tracker` — Deadlines, contingencies, signatures
- **Format:** SKILL.md + VERSION + references/ + evals/ (pashov/skills compatible)
- **LINK fit:** ★★★★★ — #skills #jackconnect #skill-store

## NEW — pashov/skills (April 16, 2026)
- **Forked:** /home/workspace/skills-1 (jvanleur2234-glitch/skills)
- **Source:** pashov/skills — 585 stars, multiple skills (solidity-auditor, x-ray)
- **What it teaches:** The SKILL.md + VERSION + references/ + evals/ format
- **Status:** Reference — this is the format for all Solomon OS skills
- **LINK fit:** ★★★★★ — #skills #format #reference

## NEW — easy-invoice-pdf (April 16, 2026)
- **Forked:** /home/workspace/easy-invoice-pdf — 632 stars, MIT
- **What it does:** Invoice PDF generator (easyinvoicepdf.com) with live preview, multiple templates
- **Skill use:** The invoice-generator skill uses this as the engine
- **LINK fit:** ★★★★☆ — #invoice #skill-component

## NEW — m1k1o/neko (April 16, 2026)
- **Forked:** /home/workspace/neko — 20K stars, MIT
- **What it does:** Self-hosted virtual browser via WebRTC/docker — browser in browser
- **Use for:** Remote browser in JackConnect Watch Once engine (alternative to Camofox)
- **LINK fit:** ★★★★☆ — #browser #remote #jackconnect

## NEW — Twenty CRM (April 16, 2026)
- **Cloned:** /home/workspace/twenty — 44K+ stars, AGPL-3.0
- **What it does:** Open-source CRM (salesforce alternative, $9/user/mo cloud, free self-hosted)
- **Use for:** JackConnect CRM integration — agents run the CRM for users
- **Why it matters:** Nav Toor thread — Salesforce charges $175/user/mo, Twenty gives same features at $9
- **LINK fit:** ★★★★★ — #crm #jackconnect #open-source

## Supported Model Providers

| Provider | Env Var | Model | Status |
|----------|---------|-------|--------|
| OpenAI | `OPENAI_API_KEY` | GPT-4o, GPT-4o-mini | ✅ |
| Ollama | (local) | qwen3:1.7b, llama3.2, etc. | ✅ |
| DeepSeek | `DEEPSEEK_API_KEY` | deepseek-chat | ✅ |
| Dashscope | `DASHSCOPE_API_KEY` | qwen-turbo | ✅ |
| OpenRouter | `OPENROUTER_API_KEY` | various | ✅ |
| ZAI | `ZAI_KEY_API` | configurable | ✅ |
| UST | `UST_KEY_API`, `UST_URL` | configurable | ✅ |
| **NVIDIA** | `NVIDIA_API_KEY` | `minimaxai/minimax-m2.5` (via https://integrate.api.nvidia.com/v1) | ✅ **TESTED 2026-04-14** |

NVIDIA endpoint: `https://integrate.api.nvidia.com/v1` — OpenAI-compatible, free credits available at https://build.nvidia.com/
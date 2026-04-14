# SOLOMON OS MASTER PLAN — Build the AI Staffing Platform
**Date:** April 11, 2026
**Status:** RESEARCH COMPLETE — EXECUTABLE PLAN READY

---

## THE BIG IDEA

**Build the "Money Printer for AI"** — a $9-99/mo platform that gives ANYONE a team of AI agents who work while they sleep. Paste a URL → get an AI employee that knows your business, executes tasks, sends emails, and messages on LinkedIn — backed by Solomon OS infrastructure.

**Competitors:**
- Money Printer (YC backed): $99-800/mo, closed stack
- Pinchtab (YC backed): $99-800/mo, browser only
- Browserbase: ~$99+/mo, infrastructure only
- Our advantage: 80% cheaper, own the stack, local-first, extendable

---

## WHAT WE HAVE RIGHT NOW

| Component | Status | Capability |
|-----------|--------|------------|
| Zo (me) | ✅ Live | Orchestrator, builder, reasoning |
| Hermes | ✅ 94 skills | Agent brain, skills registry |
| Russell Tuna | ✅ Telegram | User comms, task delivery |
| Ollama | ✅ 6 models | Free local inference |
| PinchTab | ✅ Port 9868 | Browser automation (headless Chrome) |
| MoneyPrinterTurbo | ✅ Port 8080 | Video generation |
| Zo Space | ✅ Live | Landing pages, dashboards |
| Stripe | ✅ Connected | Payments |
| Hermes Skills | ✅ 68 skills | SEO, coding, research |

**MISSING PIECES identified:**
1. LinkedIn integration (open source found: `linkedin-cli` by Linked-API)
2. Email sending (Resend: 3K free/mo, or AgentMail MCP)
3. Multi-user / multi-tenant isolation (open source found: `AgentSystems`)
4. Unified browser UX (Solomon Connect `/connect` route started)
5. Human approval layer (needed for account actions)

---

## PRICING MODEL

| Tier | Price | Features |
|------|-------|----------|
| **Free** | $0 | 3 tasks/day, basic browser, Ollama only |
| **Starter** | $9/mo | 50 tasks/day, email + LinkedIn Lite, 1 AI worker |
| **Professional** | $29/mo | Unlimited tasks, full LinkedIn, 3 AI workers, Stripe billing |
| **Business** | $99/mo | Unlimited everything, custom skills, priority support, team seats |

---

## EXECUTION PLAN — 4 PHASES

### PHASE 1 — FOUNDATION (Week 1-2) — $0 to build

**Goal:** Single-user prototype that actually works end-to-end

1. **Wire PinchTab → Ollama → Hermes → Russell Tuna**
   - PinchTab navigates URL
   - Ollama (qwen3:1.7b) analyzes page
   - Hermes decides what to do
   - Russell Tuna reports back via Telegram
   - Human approves or rejects action
   - Action executes

2. **Add LinkedIn via `linkedin-cli`**
   - `npm install -g @linkedapi/linkedin-cli`
   - Clone `Linked-API/linkedin-cli` to workspace
   - Build Hermes skill for LinkedIn messaging
   - Wire to Russell Tuna

3. **Add Email via Resend**
   - Sign up at resend.com (free: 3K emails/mo)
   - Build Hermes email skill
   - Wire to Russell Tuna

4. **Build the paste-to-agent UX**
   - Zo Space page at `/connect` (already started)
   - Input: URL to any SaaS product page
   - Output: AI analyzes it → asks "what should I do?" → human approves → executes

**Deliverable:** A working Solomon OS that takes a URL and performs ONE task (send email, LinkedIn DM) based on what it reads.

---

### PHASE 2 — MULTI-USER ISOLATION (Week 3-4)

**Goal:** Make it multi-tenant so multiple people can use it

1. **Architecture: Namespace per user**
   - Each user gets isolated PinchTab instance, Hermes session, Ollama context
   - Data stays separate — no cross-contamination
   - Use Linux namespaces + separate service instances

2. **Build user management in Zo Space**
   - Sign up / login
   - Dashboard showing: tasks completed, AI workers active, usage stats
   - Tier selection (Free/Starter/Professional/Business)
   - Stripe integration for tier upgrades

3. **Human approval dashboard**
   - Every AI action goes to approval queue
   - User approves/rejects via Telegram or Zo Space
   - Timeout: auto-reject after 24 hours

4. **Open-source multi-tenant patterns to learn from:**
   - `AgentSystems/agentsystems` — open source self-hosted multi-tenant agent platform
   - `MeetLoyd` — MCP+A2A based, BYOK, enterprise governance patterns
   - `Agentsflare` — control plane for multi-tenant AI workloads

**Deliverable:** Multi-user platform with 3 paying tiers and approval flow.

---

### PHASE 3 — BRING YOUR OWN KEYS (Week 5-6)

**Goal:** Let users connect their own APIs (降低 our costs)

1. **BYOK infrastructure**
   - User provides their own OpenAI / Anthropic / Ollama endpoint
   - User provides their own LinkedIn account
   - User provides their own email (Resend, SendGrid, SMTP)
   - User provides their own Stripe for payments

2. **Skills marketplace**
   - Publish Hermes skills publicly
   - Users can browse and install skills
   - Featured skills: LinkedIn outreach, cold email, CRM integration

3. **Solomon OS for Teams**
   - 1 account → multiple team members
   - Per-seat model inside Business tier
   - Shared AI workers, individual approval queues

**Deliverable:** Platform that runs on user's own API keys, dramatically lowering our costs.

---

### PHASE 4 — SCALE (Week 7+)

**Goal:** Revenue-producing AI staffing platform

1. **AI worker marketplace**
   - Pre-built AI workers for common tasks (sales, recruiting, support)
   - Users pick workers → workers execute against approval

2. **Analytics + reporting**
   - Tasks completed per user
   - AI worker performance metrics
   - Revenue dashboard

3. **API for power users**
   - Developers can build custom workflows
   - Webhook integrations
   - MCP server for external agents

4. **Mobile app (future)**
   - React Native app
   - Approve tasks from phone
   - Push notifications for AI actions

---

## STACK SUMMARY

| Layer | Technology | Cost |
|-------|-----------|------|
| AI Brain | Hermes + Ollama (qwen3:1.7b) | $0 |
| Browser | PinchTab (self-hosted headless Chrome) | $0 |
| Email | Resend API | $0 (3K free/mo) |
| LinkedIn | `linkedin-cli` (Linked-API) | $0 |
| Database | DuckDB + JSON files per user | $0 |
| Hosting | Zo Space + self-hosted services | $0 |
| Payments | Stripe Connect | 2.9% + 30¢ per transaction |
|LLM Inference | Ollama local + BYOK OpenAI/Anthropic | $0-$50/mo |

**Total infrastructure cost per user: ~$0-5/mo**
**Charge: $9-99/mo**
**Gross margin: 80%+**

---

## RESEARCH SUMMARY — TOOLS FOUND

### LinkedIn Automation
- **Primary:** `Linked-API/linkedin-cli` — MIT, TypeScript, cloud browser via Linked API, JSON output, AI-agent friendly, active April 2026 ✅
- **MCP:** `linked-api/linkedapi-mcp` — MCP server for Claude/Cursor integration
- **Skills:** `Linked-API/linkedin-skills` — ready-to-use skills for Claude Code/Hermes

### Email Sending
- **Primary:** Resend — 3,000 free emails/month, easy API
- **Alternative:** AgentMail MCP (n8n integration)

### Multi-Tenant Architecture (Open Source)
- **AgentSystems/agentsystems** — self-hosted, Docker-based, tenant isolation, audit logs ✅ CLONED
- **MeetLoyd** — MCP+A2A protocol, BYOK, enterprise governance, SCIM
- **Agentsflare** — control plane, dynamic routing, self-hosted, multi-tenant isolation

### Browser Automation
- **PinchTab** ✅ ALREADY RUNNING on port 9868
- **Chrome DevTools MCP** ✅ CLONED, tested working
- **OpenClaw** — paste-to-agent pattern we need to replicate

### Key Standards Emerging
- **MCP (Model Context Protocol)** — becoming the USB-C of AI agents (MeetLoyd, AX Platform built on this)
- **A2A (Agent-to-Agent)** — new standard for agent communication

---

## COMPETITOR ANALYSIS

| Competitor | Price | What They Do | Our Edge |
|------------|-------|--------------|----------|
| Money Printer | $99-800/mo | Paste URL → AI does outreach | 80% cheaper, own stack |
| Pinchtab | $99-800/mo | Browser + AI tools | Free, local, full OS |
| Browserbase | ~$99+/mo | Cloud browsers only | No infra cost |
| OpenClaw | ? | Paste-to-agent | We have same primitives |

---

## IMMEDIATE NEXT STEPS (This Week)

1. **Today:** `npm install -g @linkedapi/linkedin-cli` — get LinkedIn working
2. **Today:** Sign up for Resend, get API key — get email working
3. **This week:** Wire the full loop: URL → PinchTab → Ollama → Hermes → execute email/LinkedIn → report via Russell Tuna
4. **This week:** Test end-to-end with ONE real task
5. **Next week:** Build the multi-user dashboard in Zo Space

---

## REVENUE PROJECTION

| Month | Users | Avg Revenue | Monthly Revenue |
|-------|-------|-------------|----------------|
| 1 | 10 | $15 | $150 |
| 3 | 50 | $20 | $1,000 |
| 6 | 200 | $25 | $5,000 |
| 12 | 1,000 | $30 | $30,000 |

**At 1,000 users × $30/mo = $360K ARR within 12 months.**

---

## RESOURCES NEEDED

- Joseph's time: ~2 hrs/day active development
- Me (Zo): Full autonomy to build and iterate
- No additional API keys needed to start (Ollama + Resend free tiers)
- No code changes to Hermes core — just new skills

---

## FILES CREATED THIS SESSION

- `/home/workspace/solomon-connect/README.md` — Architecture plan
- `/home/workspace/solomon-vault/brain/MASTER_PLAN.md` — This document
- `/home/workspace/solomon-vault/raw/background_connect.md` — Background work output
- Zo Space route `/connect` — UI started

---

*Plan ready. Should I start executing Phase 1?*
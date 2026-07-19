# SHARED KNOWLEDGE — JCPaid / Solomon OS

*Last updated: May 14, 2026*

## What We Decided

### May 14, 2026 — /goal FORGE + JCPaid Stack Complete

**RD Report:** /goal Autonomous Loop command — Claude Code + Codex + Hermes native. FORGE complete. JCPaid now has autonomous task loops.

**JCPaid Stack (Final):**
```
├── here.now        → 10GB permanent memory per client
├── Solomon Bus     → Fleet dispatch + inter-agent comms
├── The Agency      → 147 AI agents (ISCP pattern adopted)
├── Hermes          → 1,223 skills execution
├── AiToEarn        → Cross-platform content distribution
├── osagnent-vault  → Print-on-demand AI design pipeline
└── /goal Loop      → Autonomous agent execution [NEW]
```

**What Was Built:**
- `jcpaid-bus/` — SQLite-based inter-agent dispatch + /goal skill + hash-chained receipts
- `/goal` skill: `skills/goal_skill.py` — parses `/goal [task] until [end_state] without [constraints]`
- JCPaid personas: Innovator (captain), Closer (sales), Support (research), Admin (ops)
- Competitive position: JCPaid vs HermesOS ($9.99-$19.99/mo) — we win on here.now memory + /goal autonomy

**First Client:** Jon at EZ Heating & Cooling (605-940-0650) — warm lead, $299/mo SEO + leads pitch

**Unblocked:**
- Printify API key needed to go live on POD business
- AiToEarn docker deploy ready on Zo server
- /goal tested and working: `python skills/goal_skill.py start --text "/goal research EZ Heating..."`

---

### April 23, 2026 — JCPaid Takes Shape

**Business Decisions:**
- JCPaid = the product (AI staffing agency), JackConnect = proof of concept for real estate vertical
- Hybrid local/cloud inference — light work local (free), heavy work cloud (pay-per-use)
- Tauri desktop app — native Windows exe, Jack builds on his T15
- MemPalace (FORGE) — Milla Jovovich's 96.6% memory benchmark, ZERO cost, local
- RunFusion.ai (FORGE) — "cursor for agents," multi-provider swarm platform
- FreeLLMAPI — unified API for all LLM providers
- Google Agent Skills — 810 stars, 42 forks. Keep JCPaid Skills as our own repo (don't submit to Google)
- TileLang — hardware-agnostic inference (500-600 tok/sec on B200, 10X CUDA)
- NVIDIA Build — 1000+ free credits, MiniMax M2.7 available

**What Was Built:**
- JackConnect Tauri desktop app scaffold (system tray, 3 tabs, threat badge)
- PetPal dog co-parenting app (4 tabs, photo ID, med scheduling, walk tracker)
- JackConnect Dashboard (metrics: hours saved, tasks automated, agents running)
- Zo Space pages: /jackconnect, /jackconnect-dashboard, /petpal, /time-saver-ai
- API routes: /api/watch-once, /api/paperclip-connect, /api/paperclip-execute-task
- JCPaid Skills (7 RE agent skills with SKILL.md + metadata.yaml)
- install-jack.sh v2.5 (all tools: Ollama, BitNet, TileLang, llmfit, FreeLLMAPI, Clawd Cursor, MemPalace, etc.)
- Demo screenshots + 16-sec video

**Key Insight — Local vs Cloud:**
Mike Gannotti (realistic) vs Gorilla Rogue AI (principles) — BOTH right. Solomon OS uses HYBRID:
- Local: Qwen 3.1B/4B (free, private, fast)
- Cloud: Kimi K2.6/MiniMax M2.7 (frontier quality)
- User picks based on privacy need, capability need, budget
- llmfit auto-detects hardware and recommends the right split

**Unresolved:**
- JackConnect page not showing changes (possible caching issue)
- Rust/Tauri build blocked on server (no GTK3/WebKit) — Jack builds on T15
- Demo video creation limited — used static screenshots instead
- Counter-Manifesto not yet written
- Drag AI comp

### April 22 — Big Pivot: JCPaid is the Product
- JackConnect = proof of concept for real estate vertical
- JCPaid = the actual business: sell AI employee agencies to ANY vertical
- Positioning: "Solomon OS — the AI OS that gives you back your time for the important things"
- BitNet + Paperclip = the agent infrastructure (300 agents on 16GB RAM)
- JackConnect v2.0: installer + 7 RE agents + Watch Once + Time Saver Dashboard

### April 21 — Skills Pruning
- Audited Hermes skills: 1,441 → 1,215 (removed 226 redundant/duplicate skills)
- Target: 1,200 clean, non-redundant skills

### Free Stack Priority
- MiniMax M2.7 via NVIDIA NIM = free, fast, English
- Ollama local = free fallback
- No paid models until revenue comes in

### Hermes Personality
- Reset SOUL.md to default (helpful, concise, no Chinese)
- Fixed proxy: now points to SkillClaw on localhost:30000
- Fixed model: nvidia/minimaxai/minimax-m2.7

### Clicky Walkthrough
- 4 images generated showing all 3 setup steps + agent demo
- Visual walkthrough guide in `/home/workspace/solomon-installer/clicky-walkthrough/`

### Phone/SMS
- Development: Twilio ($1 free credit)
- Production: Plivo ($0.0065/SMS, $0.10/min voice)
- Free alternative: SipGate SIM (Germany) or.local SIP

### Installer
- Live at: https://josephv.zo.space/solomon-setup
- GitHub: jvanleur2234-glitch/zo-restore (files/install.sh, SOUL.md, CLAUDE.md)
- Runs: Ollama + Hermes + SkillClaw + Telegram bot

### Group Chat
- Russell Tuna token: stored at /home/workspace/.agent/secrets/telegram_bot_token.sh
- Direction confirmed: build group chat with Zo1 + Zo2 as bot members
- Will notify Joseph when Zo1 and Zo2 are both in the same Telegram group

### Services Running
- Ollama: localhost:11434 ✅
- SkillClaw: localhost:30000 (NVIDIA MiniMax M2.7) ✅
- Hermes: running, English output confirmed ✅
- zo.space: running ✅

## What to Build Next
1. Full video walkthrough (images ready, record actual screen)
2. Telegram group chat handler (token ready)
3. Test /solomon-setup on public URL
4. Clone Clicky and record real walkthrough

### April 24, 2026 — JCPaid Positioning + Gamification

**Research Findings (4-agent synthesis):**
- AI memory layer (Mem0, Zep) is the critical unlock — turns stateless tools into persistent workers
- Market needs "AI HR" — nobody has this yet: AI performance reviews, AI team management, AI worker marketplace
- Enhancement framing WINS: Microsoft Copilot, Adobe Firefly, Canva Magic Studio
- Replacement framing LOSES: Jasper AI collapsed, "AI replaces you" kills adoption
- BCG: Workers who fear AI replacement are 27% more likely to QUIT
- Harvard: AI creates MORE jobs in augmentation roles
- Gen Z adopts fastest with "skill amplification" framing

**Competitive Landscape:**
- Drag AI (drag-ai.com) — DIRECT competitor, $99/mo AI employee, multi-agent team management
- OpenSwarm — pivoted (failed)
- RunFusion — "cursor for agents," multi-provider swarm platform (FORGE)

**The Positioning:**
- NOT "software" — "AI labor marketplace"
- You HIRE an AI worker, not install software
- "You were doing 5 jobs. Now you have a team. Focus on the 1 job that matters."
- Position as: AI HR for small businesses (no one has this yet)

**The Missing Piece — Gamification + Rewards:**
- Duolingo-style onboarding: AI Team Lead asks "What do you do? What takes up your time?"
- AI workers gain XP, level up, unlock new skills
- Streak counter: "Your AI has handled 47 tasks in a row!"
- Badges: "First Lead Qualified" "Weekend Warrior" "100 Tasks Done"
- Credits for completed tasks — earn free AI workers
- Referral bonuses — "Bring a friend, get 1 month free"
- Time saved counter — "You've saved 47 hours this month"

**What to Build Next:**
- JCPaid onboarding flow (conversation → AI sets up workers)
- AI worker XP/level system
- Badge + achievement system
- Referral tracking
- Time saved dashboard

**Unresolved:**
- Pricing tiers (still need to finalize)
- Demo video for JCPaid (need better screenshots or screen recording)

**What Was Built Today:**
- JackConnect Dashboard rebuilt with gamification (XP, Level, Streak, Badges)
- NEW "Find Your Dream" tab: Passions Discovery, Dream Vision Board, AI Life Architect
- "The Only Place Humans Go for AI" — vision set

**The Dream Finder Vision:**
- JCPaid becomes the platform where people discover what they really want
- AI asks probing questions to surface hidden passions
- Vision board (drag-and-drop images of dream life)
- AI Life Architect generates a 3-step personalized plan
- Badges reward completion: "Creative Spark" "Passion Finder" "Dream Builder"
- "Find Your Dream" tab replaces generic "AI tools" with meaning-making
- NOT just productivity — existential: "what am I here to do?"

**What to Build Next:**
- Refine "Find Your Dream" questions (more probing, less generic)
- Add image upload to Vision Board
- Connect AI Life Architect to actual resource database (courses, communities, tools)
- Referral tracking
- Time saved dashboard
- Full demo video

### April 24, 2026 — JCPaid Affiliate Network

**THE INSIGHT:**
Agents and freelancers already have clients who need AI. They make money selling THEIR time. We let them make money selling OUR AI workers — without building anything themselves.

**HOW IT WORKS:**
1. Agent joins → gets a unique affiliate link
2. Shares with clients who need AI workers
3. Client pays JCPaid $99-299/mo
4. Agent gets 20% commission for LIFE
5. Agent does zero support — we handle everything

**THE MATH:**
- 10 clients × $300/month = $600/month passive
- 50 clients × $300/month = $3,000/month passive
- 100 clients × $300/month = $6,000/month passive
- 20% recurring. Forever.

**COMPETITION ADVANTAGE:**
- Drag AI → enterprise sales only
- Everyone else → one-off subscriptions
- JCPaid → distributed sales force via affiliate network

This turns every freelancer, coach, consultant, and agent into a commission-based AI sales rep with zero overhead.

**THE TRUSTED ADVISOR MODEL (FIX):**
Non-technical agents don't sell AI — they sell outcomes from someone they already trust. The key: they don't explain AI. They just bundle AI outcomes into their existing service. Example: CPA sells "AI bookkeeping" to their small business clients — clients already trust the CPA with their taxes and compliance. One more service. Zero selling required.

**CRITICAL COMPETITOR + INSPIRATION: Zero Human Company (ZHC-RPG)** — Brian Roemmele + Grok CEO. 2,700 AI employees, Fortune 500 tested for 2 days. Full transparency model. This is THE validation of the JCPaid thesis. Queue this immediately.

**POMP LIANO VALIDATION:**
- Changed his mind: AI creates MORE jobs, not fewer
- 5.6% MORE college grads hired last 12 months
- 640K new AI jobs created 2023-2025 (LinkedIn)
- Software engineer roles GROWING, not shrinking
- "AI makes companies more productive → more corporations + startups + jobs"
- Big tech layoffs = bloated companies using AI as excuse for over-hiring

This validates our JCPaid positioning: AI as JOB CREATOR, not replacer.

**Future AGI**

### April 24, 2026 — JCPaid Affiliate Network

**THE INSIGHT:**
Agents and freelancers already have clients who need AI. They make money selling THEIR time. We let them make money selling OUR AI workers — without building anything themselves.

**HOW IT WORKS:**
1. Agent joins → gets a unique affiliate link
2. Shares with clients who need AI workers
3. Client pays JCPaid $99-299/mo
4. Agent gets 20% commission for LIFE
5. Agent does zero support — we handle everything

**THE MATH:**
- 10 clients × $300/month = $600/month passive
- 50 clients × $300/month = $3,000/month passive
- 100 clients × $300/month = $6,000/month passive
- 20% recurring. Forever.

**COMPETITION ADVANTAGE:**
- Drag AI → enterprise sales only
- Everyone else → one-off subscriptions
- JCPaid → distributed sales force via affiliate network

This turns every freelancer, coach, consultant, and agent into a commission-based AI sales rep with zero overhead.

**THE TRUSTED ADVISOR MODEL (FIX):**
Non-technical agents don't sell AI — they sell outcomes from someone they already trust. The key: they don't explain AI. They just bundle AI outcomes into their existing service. Example: CPA sells "AI bookkeeping" to their small business clients — clients already trust the CPA with their taxes and compliance. One more service. Zero selling required.

**CRITICAL COMPETITOR + INSPIRATION: Zero Human Company (ZHC-RPG)** — Brian Roemmele + Grok CEO. 2,700 AI employees, Fortune 500 tested for 2 days. Full transparency model. This is THE validation of the JCPaid thesis. Queue this immediately.

**POMP LIANO VALIDATION:**
- Changed his mind: AI creates MORE jobs, not fewer
- 5.6% MORE college grads hired last 12 months
- 640K new AI jobs created 2023-2025 (LinkedIn)
- Software engineer roles GROWING, not shrinking
- "AI makes companies more productive → more corporations + startups + jobs"
- Big tech layoffs = bloated companies using AI as excuse for over-hiring

This validates our JCPaid positioning: AI as JOB CREATOR, not replacer.

**ML Intern**

*Last updated: April 24, 2026*

## Session Log

### April 26, 2026 — Telegram Session

**X Link Analyzed:** https://x.com/tonysimons_/status/2048217319466266940
- Hermes Vault v0.4.0 launched — credential health tracking for AI agents
- Video created with Remotion Practices skill + MiniMax CLI for music
- Could integrate with Solomon OS secrets management

**Files created:** `brain/AGENT_PLANNING_ARCHITECTURE.md` (synced to GitHub)
**Status:** Normal operations resumed

### April 26, 2026 — AI Planning Framework Integrated

**Source:** arXiv:2603.12710 — maps LLM agent planning to classic search algorithms

**3 strategies implemented:**
- Step-by-Step (BFS) — 38% success, human-aligned
- Tree Search (Best-First) — moderate reliability, value-function dependent
- Full-Plan-in-Advance (DFS) — 89% element accuracy, best for production

**Key insight:** "Misread intent → wrong goal" is #1 failure mode. Solved with Guardian Gate.

**Files created:**
- brain/AGENT_PLANNING_ARCHITECTURE.md — full integration plan
- brain/SOLOMON_GUARDIAN.md — goal validation gate pattern

**Changes:**
- Services.md — added "Agent Planning Architecture" section
- Solomon Bus now uses Full-Plan-in-Advance for well-defined jobs
- 5 Quality Metrics added to Guardian: Recovery Rate, Trajectory Efficiency, Plan Coherence, Action Validity, Goal Alignment
- Plan-as-External-Memory pattern for context drift prevention
## OSagnent Build (2026-05-13)

### What We Built
- OSagnent workspace at /home/workspace/osagnent/
- TinyFish skill for free model access (Qwen 3.6B Plus, OwlAlpha)
- Bot detection for Telegram
- JCPaid Bus fleet dispatcher (TypeScript)
- OSagnent agent with free/premium model routing

### Files Created
- skills/osagnent-tinyskills/SKILL.md — TinyFish API integration
- agents/osagnent-agent.ts — Main agent
- bus/dispatcher.ts — Fleet dispatch
- config.json — Model registry + pricing ($9.99/$19.99/$49.99)
- AGENTS.md — Updated build status

### Architecture
```
OSagnent
├── skills/ (TinyFish, bot detect, observe, voice, auto-learn)
├── agents/ (osagnent-agent.ts)
├── bus/ (dispatcher.ts)
└── config.json (model registry + pricing)
```

### Competition
- HermesOS charges $9.99-$19.99/mo with crypto
- OSagnent wins on here.now memory (permanent 10GB vs session-only)

### Next Steps
1. Get TinyFish API key from accounts.tinyfish.ai
2. Connect here.now API for 10GB permanent memory
3. Test observe layer with real tasks

### July 15, 2026 —  project discontinued
- Joseph decided to remove the  project completely.
- Moved the API repositories, related skill, Arena response/collector/intelligence artifacts, and project brain document into `Trash/` for recoverability.
- Removed active  references from the Solomon OS roadmap, agent index, and current session summary.
- No  service or scheduled task was found.


### July 16, 2026 — AI News Scraper scheduled run

- Ran `/home/workspace/ai-news-scraper/scraper.py`; completed successfully and wrote `output/brief_20260716_1303.json` with 50 items and 20 trending items.
- Ollama was unavailable, so `deliverable_a_russell_intelligence.py` was skipped as instructed; Russell Tuna intelligence delivery did not run.
- Ran `deliverable_c_content_pipeline.py`; it completed but generated 0 viral posts and could not reach Ollama/MoneyPrinterTurbo (`Cannot assign requested address`).
- Full output was logged to `/tmp/ai-news-cron.log`.

### July 16, 2026 — Tier 1 Ideas Reminder
- Reminded Joseph to return to the six Tier 1 business ideas and the Dog Co-Parent App plan.
- The next decision is to choose 1–2 ideas to execute.
- `MegaPlan/SESSION_SUMMARY.md` was referenced but is currently missing; the available idea documents are `ideas/MASTER_BUSINESS_RANKINGS.md` and `ideas/DOG_COPARENT_APP.md`.

### July 17, 2026 — Arena2API Morning Status Report
- Sent Joseph a Telegram status report after checking the requested legacy paths.
- The requested April 5 summary, Arena2API brain document, ARENA_AI plan, and `/home/workspace/arena2api/` directory were not present in the current workspace.
- No Arena2API implementation files could be verified; report marked the project state as not verifiable and recommended restoring/recreating it before paying for captcha-solver calls.
- Recall files `auto_summary.py` and `summarize_session.sh` were also not found; report marked recall as in progress.

### July 17, 2026 — AI News Scraper pipeline run

- Ran `ai-news-scraper/scraper.py`: completed successfully with 48 collected items and a brief at `ai-news-scraper/output/brief_20260717_1302.json`.
- Russell intelligence delivery was skipped because Ollama was unavailable at `127.0.0.1:11434`; content pipeline still completed but generated 0 viral posts and could not reach MoneyPrinterTurbo.
- Known scraper warnings: arXiv feed parsing errors, VentureBeat feed redirect, and missing `browser_use` module fallback.
- Full output was logged to `/tmp/ai-news-cron.log`.

### July 18, 2026 — Arena2API status report
- Sent the scheduled morning Telegram report after auditing the requested paths.
- Arena2API source, documentation, Arena2API project directory, April 5 summary, and recall helper files were not present in the current workspace, so implementation status could not be verified.
- Recommended restoring or recreating Arena2API and validating Cloudflare/reCAPTCHA handling before purchasing solver calls.

### July 19, 2026 — Arena2API Morning Status

Sent a concise Telegram status report to Joseph. The requested April 5 session summary, Arena2API documentation, MegaPlan/ARENA_AI.md, and /home/workspace/arena2api/ were not present in the current workspace, so the report explicitly marked Arena2API as unverified and blocked on Cloudflare + reCAPTCHA Enterprise v3. Recommended restoring the project and running captcha/Cloudflare tests before paying for solver calls. Recall helpers auto_summary.py and summarize_session.sh remain unverified/missing.

### July 19, 2026 — AI News Scraper pipeline run

- Ran `ai-news-scraper/scraper.py`: completed successfully with 49 collected items and 15 trending items; wrote `ai-news-scraper/output/brief_20260719_1303.json`.
- Ollama was unavailable at `127.0.0.1:11434`, so `deliverable_a_russell_intelligence.py` was skipped as instructed; Russell Tuna intelligence delivery did not run.
- Ran `deliverable_c_content_pipeline.py`: completed but generated 0 viral posts and could not reach Ollama or MoneyPrinterTurbo (`Cannot assign requested address`).
- Full output was logged to `/tmp/ai-news-cron.log`. Known scraper warnings included the VentureBeat feed redirect and missing `browser_use` module fallback.

### July 19, 2026 — Russell Tuna travel API reminder
- Sent Joseph a Telegram reminder to add either `TRAVELPAYOUTS_API_KEY` or `AMADEUS_CLIENT_ID` + `AMADEUS_CLIENT_SECRET` in Zo Settings > Advanced so Russell Tuna can perform live flight/hotel searches.

### July 19, 2026 — Sunday Self-Review

- Reviewed Telegram summaries for July 15–19, job logs, cadence automations, and recent zo-foam failures.
- Repaired `.agent/jobs/job-runner.sh`: fixed invalid pending-glob syntax and empty-directory handling with `nullglob`; restored executable permission and verified with `bash -n` plus a smoke-test job.
- Quarantined stale April 27 job `job_1777321162272_zh1xu1162272_zh1xu93fyb` instead of executing its obsolete command.
- Removed duplicate `queue:` rules, retaining the analyze-first `/rnd` behavior.
- Added a Sunday review rule to check runner health, quarantine aged jobs, and flag stale cadence agents.
- Updated `AGENTS.md` and logged the failure/repair in `zo-foam/dumps/by-type/experiments/failure/2026-07-19-job-runner-repair.md`.
- Open issues: Ollama/MoneyPrinterTurbo downstream delivery, repeated Arena2API missing-file reports, stale `ACTIVE_CONTEXT.md`, and no daily cadence watchdog.

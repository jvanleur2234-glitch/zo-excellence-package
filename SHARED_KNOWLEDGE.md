# SHARED KNOWLEDGE — JCPaid / Solomon OS

*Last updated: April 21, 2026*

## What We Decided Today

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
# AGENTS.md — Solomon OS Agent System

> **NORTH STAR: Make Zo the best AI, build a profitable business, give others the tools to do the same, help as many people as possible.**

## SYSTEM OVERVIEW

Solomon OS is Joseph's AI business system. Multiple agents work together:
- **Zo** (this AI) — orchestrator, builder, strategic advisor
- **Russell Tuna** — personal AI at t.me/RussellTunaBot (streaming, free via Ollama)
- **Hermes** — hosted agent system with skills registry
- **Solomon Bus** — inter-agent communication and task queue
- **Job Runner** — Persistent background job daemon. Survives conversation resets.
- **Service Monitor** — Health check every 60s.

## KEY CONTEXT FILES

All agents read from `/home/workspace/MegaPlan/`:
- `README.md` — system overview
- `SOLOMON_OS.md` — full operating system documentation
- `PROJECT_SUMMARY.md` — current projects and priorities
- `AI_ARSENAL.md` — tools, models, and capabilities
- `HOW_TO_USE.md` — how to work with the system
- `HERMES_CAPABILITIES.md` — Hermes-specific capabilities
- `SESSION_SUMMARY.md` — latest session notes
- `NORTH_STAR.md` — core purpose and mission (THE MOST IMPORTANT FILE)
- `ARENA_AI.md` — 🚨 ALL HANDS PROJECT — Arena.ai voting, capture pipeline, ranking engine, and AI Model Selector business

## RUSSELL TUNA BOT
- **Telegram**: t.me/RussellTunaBot
- **Backend**: Ollama qwen3:1.7b, streaming responses
- **Fork command**: `/fork` — spawns up to 10 parallel sub-agents via Zo API
- **Restart**: `cd /home/workspace/WifeApp/v2/bot && TELEGRAM_BOT_TOKEN=... python3 russell_bot.py`

## LIVE SERVICES
- Russell Tuna Bot: t.me/RussellTunaBot ✅
- Ollama: port 11434 ✅ (6 models)
- MoneyPrinterTurbo: port 8080
- Solomon Bus Watcher: background PID
- Hermes Router: S1/S2/S3 ✅
- RENU API: port 5010 ✅ (31,102 Amplified verses loaded)
- Second Brain Portal: port 5011 ✅ (code ready, needs paid plan for external exposure)
- Parlor Voice AI: forked ✅
- MarkItDown: installed ✅
- ShareTrace: forked ✅

## ALWAYS-ON SYSTEMS
- **Job Runner** — Persistent background job daemon. Survives conversation resets.
  - Submit: `/home/workspace/.agent/jobs/submit.sh "<command>" [timeout]`
  - Status: `/home/workspace/.agent/jobs/status.sh`
  - All output: `/home/workspace/.agent/jobs/logs/`
  - Queue dir: `/home/workspace/.agent/jobs/pending/`
- **Service Monitor** — Health check every 60s.
  - Status: `cat /home/workspace/.agent/status/services.json`
  - Health log: `/home/workspace/.agent/status/health.log`
- **tmux** — Installed. Use for anything > 2 minutes.
  - Start session: `tmux new -s agent -d`
  - Send command: `tmux send -t agent 'command'`
  - Reattach: `tmux attach -t agent`

## BUSINESS PRIORITY

The #1 business right now: **AI Employee Agency** — Package Solomon OS as sellable AI employees for businesses. First client: Jack Vanleur (real estate). JackConnect built April 11.

Secondary: Faceless Kids YouTube (MoneyPrinterTurbo + social pipeline).

## COMMANDS
- `hermes --help`
- `/home/workspace/solomon-bus/bus.sh status`
- `/fork [task1 | task2 | task3]` — parallel agent forking
- `job submit` → `/home/workspace/.agent/jobs/submit.sh`
- `job status` → `/home/workspace/.agent/jobs/status.sh`
- `service status` → `cat /home/workspace/.agent/status/services.json`
- `tmux ls` → list active tmux sessions

---

*Last updated: April 5, 2026*

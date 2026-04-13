#!/bin/bash
# START_HERE.sh — One-command bootstrap for a new Zo
# Usage: bash <(curl -fsSL https://raw.githubusercontent.com/jvanleur2234-glitch/zo-restore/main/START_HERE.sh)
# Or copy-paste the content into a new Zo chat

set -e

echo "🌟 Zo Excellence Package — Bootstrapping..."
WORKSPACE="/home/workspace"

# Step 1: Directories
echo "[1/7] Creating directories..."
mkdir -p "$WORKSPACE"/{Skills/asm/src,Skills/zo-github/scripts,Skills/zo-foam/scripts,Skills/cli-anything-web/scripts,Skills/web-scraper/scripts,Skills/brainstorming,Skills/analytics-tracking,Skills/ab-test-setup,Skills/arena2api/scripts,Skills/humanizer,Skills/competitor-alternatives,Skills/copy-editing,Skills/email-sequence,Skills/voltagent-awesome-agent-skills,Skills/canvas-design,memory_db,zo-foam/dumps/by-type/{experiments/{success,failure},decisions,ideas,code,conversations,wins,errors},zo-foam/journal/by-project/{solomon-os,arena2api,russell-tuna,zo-foam},zo-foam/journal/active,zo.space-tasks,MegaPlan,.agent/jobs,.agent/status}
echo "  ✅ Directories"

# Step 2: Packages
echo "[2/7] Installing packages..."
apt-get update -qq && apt-get install -y -qq tmux ffmpeg pandoc curl jq git gh > /dev/null 2>&1
npm install -g agent-skill-manager > /dev/null 2>&1
echo "  ✅ Packages"

# Step 3: AGENTS.md
echo "[3/7] Writing AGENTS.md..."
cat > "$WORKSPACE/AGENTS.md" << 'AGENTS_EOF'
# AGENTS.md — Solomon OS Agent System
> **NORTH STAR: Make Zo the best AI, build a profitable business, give others the tools to do the same, help as many people as possible.**

## SYSTEM OVERVIEW
Solomon OS is Joseph's AI business system.
- Zo (this AI) — orchestrator, builder, strategic advisor
- Russell Tuna — personal AI at t.me/RussellTunaBot
- Hermes — hosted agent system with skills registry
- Solomon Bus — inter-agent communication and task queue

## KEY CONTEXT FILES
All agents read from `/home/workspace/MegaPlan/`:
- README.md — system overview
- SOLOMON_OS.md — full operating system documentation
- PROJECT_SUMMARY.md — current projects and priorities
- AI_ARSENAL.md — tools, models, and capabilities
- HOW_TO_USE.md — how to work with the system

## WORKING RULES
1. When Joseph says "load megaplan", read ALL files in `/home/workspace/MegaPlan/`
2. After every Telegram conversation, save a session summary to `/home/workspace/solomon-vault/raw/telegram_SUMMARY_YYYY-MM-DD.md`
3. Every experiment gets logged to `/home/workspace/zo-foam/dumps/by-type/experiments/`
4. Every decision gets logged to `/home/workspace/zo-foam/dumps/by-type/decisions/`
5. Redirect long-running script output to files: > /tmp/output.log 2>&1
6. Use tmux for any task that takes more than 2 minutes

## LIVE SERVICES
- Ollama: port 11434 (qwen3:1.7b recommended)
- MoneyPrinterTurbo: port 8080
- Zo Space: https://josephv.zo.space

## COMMANDS
- hermes --help
- asm — skill manager TUI
- /zo/ask — spawn child Zo session

Last updated: 2026-04-13
AGENTS_EOF
echo "  ✅ AGENTS.md"

# Step 4: MegaPlan README
echo "[4/7] Writing MegaPlan..."
cat > "$WORKSPACE/MegaPlan/README.md" << 'MEGA_EOF'
# MegaPlan
> START HERE. For new conversations, read this file first.

You are Zo, part of Joseph's AI business system called Solomon OS.
Full context: /home/workspace/MegaPlan/SOLOMON_OS.md

Key things:
- Solomon OS — Joseph's 24/7 AI business
- Payment via Stripe — products live
- Ollama qwen3:1.7b on port 11434 (free)
- Zo Space: https://josephv.zo.space
- Telegram: @zo_computer_bot

When Joseph says "load megaplan":
1. Read all files in /home/workspace/MegaPlan/
2. Read GitHub: https://raw.githubusercontent.com/jvanleur2234-glitch/zo-restore/main/files/SOLOMON_OS.md
3. Confirm full context loaded

Last updated: 2026-04-13
MEGA_EOF
echo "  ✅ MegaPlan/README.md"

# Step 5: Memory DB seed
echo "[5/7] Writing memory_db..."
cat > "$WORKSPACE/memory_db/memory.jsonl" << 'MEM_EOF'
{"repo":"github/spec-kit","stars":11100,"license":"MIT","forked":true,"installed":true,"security":"CLEAN","commercial_use":true,"notes":"OpenAPI/spec management CLI, 11100 stars","ts":"2026-03-23T00:00:00Z"}
{"repo":"agentscope-ai/ReMe","stars":2000,"license":"MIT","forked":true,"installed":true,"security":"CLEAN","commercial_use":true,"notes":"Memory management for AI agents","ts":"2026-03-23T00:00:00Z"}
{"repo":"marcusschwarz/MoneyPrinterTurbo","stars":7400,"license":"MIT","forked":true,"installed":true,"security":"CLEAN","commercial_use":true,"notes":"Text-to-video, needs OpenAI key, port 8080","ts":"2026-03-23T00:00:00Z"}
{"repo":"PrefectHQ/prefect","stars":40000,"license":"Apache-2.0","forked":true,"installed":true,"security":"CLEAN","commercial_use":true,"notes":"Workflow orchestration engine, 40000 stars","ts":"2026-03-23T00:00:00Z"}
{"repo":"browser-use/browser-use","stars":35000,"license":"MIT","forked":true,"installed":true,"security":"CLEAN","commercial_use":true,"notes":"AI browser automation, 35000 stars","ts":"2026-03-23T00:00:00Z"}
{"repo":"public-apis/public-apis","stars":400000,"license":"MIT","forked":true,"installed":true,"security":"CLEAN","commercial_use":true,"notes":"7900+ free APIs, 400k stars","ts":"2026-03-23T00:00:00Z"}
{"repo":"SWE-agent/swe-agent","stars":28000,"license":"MIT","forked":true,"installed":false,"security":"CLEAN","commercial_use":true,"notes":"Automated PRs, bug fixes, 28000 stars","ts":"2026-03-23T00:00:00Z"}
{"repo":"cantino/huginn","stars":37000,"license":"MIT","forked":true,"installed":false,"security":"CLEAN","commercial_use":true,"notes":"Open-source automation like Zapier","ts":"2026-03-23T00:00:00Z"}
{"repo":"Helixar-AI/ReleaseGuard","stars":1000,"license":"MIT","forked":true,"installed":true,"security":"CLEAN","commercial_use":true,"notes":"Pre-release security checker","ts":"2026-03-23T00:00:00Z"}
{"repo":"TauricResearch/TradingAgents","stars":39200,"license":"Apache-2.0","forked":true,"installed":true,"security":"CLEAN","commercial_use":true,"notes":"Multi-Agent LLM Financial Trading, 39k stars","ts":"2026-03-23T00:00:00Z"}
{"repo":"openbotx/openbotx","stars":7800,"license":"Apache-2.0","forked":true,"installed":true,"security":"CLEAN","commercial_use":true,"notes":"Multi-agent platform, Paperclip","ts":"2026-03-23T00:00:00Z"}
{"repo":"frectonz/penny","stars":121,"license":"MIT","forked":true,"installed":true,"security":"CLEAN","commercial_use":true,"notes":"Claude Code wrapper with TUI","ts":"2026-03-23T00:00:00Z"}
{"repo":"cisco-ai-defense/skill-scanner","stars":1514,"license":"Apache-2.0","forked":true,"installed":true,"security":"CLEAN","commercial_use":true,"notes":"Security scanner for AI Agent Skills","ts":"2026-03-23T00:00:00Z"}
MEM_EOF
echo "  ✅ memory_db (14 repos seeded)"

# Step 6: zo-foam SKILL.md
echo "[6/7] Writing zo-foam SKILL.md..."
cat > "$WORKSPACE/Skills/zo-foam/SKILL.md" << 'ZFOAM_EOF'
---
name: zo-foam
description: "Zo Foam — organized AI second brain with categories, agent tags, and experiment tracking. Joseph's personal memory system."
---

# Zo Foam — Organized AI Second Brain

## What It Does
Zo Foam is Joseph's personal memory layer — organized, categorized, and queryable.

## Core Concepts
- Organized by category — not just chronological dumps
- Agent color tags — [ZO], [HERMES], [RUSSELL], [SOLOMON], [USER]
- Experiment tracking — document what you tried, what worked, what failed
- Project isolation — each project has its own journal folder

## Directory Structure
- zo-foam/dumps/YYYY-MM-DD.jsonl — daily dumps
- zo-foam/dumps/by-type/experiments/ — success/failure tracking
- zo-foam/dumps/by-type/decisions/ — key decisions
- zo-foam/dumps/by-type/ideas/ — half-formed ideas
- zo-foam/dumps/by-type/code/ — code created/modified
- zo-foam/dumps/by-type/conversations/ — session summaries
- zo-foam/dumps/by-type/wins/ — victories
- zo-foam/dumps/by-type/errors/ — problems, failed approaches
- zo-foam/journal/by-project/ — per-project journals
- zo-foam/journal/active/ — currently active projects

## Agent Tags
- [ZO] — my own work, decisions, observations
- [HERMES] — Hermes capabilities, skills, evolution
- [RUSSELL] — Russell bot sessions, features
- [SOLOMON] — inter-agent events
- [USER] — Joseph's direct requests, priorities

## Dump Command
python3 /home/workspace/Skills/zo-foam/scripts/dump.py "text" --source chat --tags tag1,tag2 --projects project-name

## Resurface Command
python3 /home/workspace/Skills/zo-foam/scripts/resurface.py "query" --days 90 --limit 10

## Rules
1. Every dump gets a project tag — if none fits, use general
2. Every experiment gets its own entry in by-type/experiments/
3. Success AND failure get documented — both are valuable
4. Active projects live in journal/active/
5. No empty entries — if you write it, make it useful
6. Joseph's requests get [USER] tag

System: Don't just dump — organize. Every entry into a category. Every experiment tracked.
ZFOAM_EOF
echo "  ✅ zo-foam SKILL.md"

# Step 7: Zo dot agent
echo "[7/7] Writing agent config..."
cat > "$WORKSPACE/.agent/status/status.json" << 'AGT_EOF'
{
  "ollama": { "port": 11434, "status": "unknown" },
  "moneyprinter": { "port": 8080, "status": "unknown" },
  "hermes": { "status": "unknown" },
  "last_updated": "never"
}
AGT_EOF
echo "  ✅ .agent/status"

echo ""
echo "🌟 BOOTSTRAP COMPLETE"
echo ""
echo "NEXT STEPS:"
echo "1. Run the 8 create_rule calls from SETUP_RULES.sh in chat"
echo "2. Say 'load megaplan' to load full context"
echo "3. Say 'log this to zo-foam: first memory from new Zo'"
echo ""
echo "Run 'list_rules' to verify rules loaded."

# ===== EXTENSIONS: Already installed on this Zo =====
# The following are already set up on this Zo — include in new Zo installs:


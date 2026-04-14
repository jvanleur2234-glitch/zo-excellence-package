# RD Report: openfang (RightNow-AI)

**Date:** April 13, 2026  
**URL:** https://github.com/RightNow-AI/openfang  
**Stars:** 16.6k | **Forks:** 2.1k | **License:** Apache-2.0/MIT  

## What It Is

OpenFang is an **open-source Agent Operating System** built in Rust. It's not a chatbot wrapper — it's a full OS for autonomous agents that work for you 24/7 on schedules. Ships as a single ~32MB binary.

## Core Innovation: "Hands"

Pre-built autonomous capability packages that run independently without you prompting them:

| Hand | What It Does |
|------|-------------|
| **Clip** | YouTube → vertical shorts pipeline (FFmpeg + yt-dlp + 5 STT backends) |
| **Lead** | Daily prospect discovery, enrichment, scoring 0-100, dedup, CSV/JSON delivery |
| **Collector** | OSINT intelligence, change detection, sentiment tracking, knowledge graphs |
| **Predictor** | Superforecasting engine with Brier score tracking, contrarian mode |
| **Researcher** | Deep cross-referenced research, CRAAP credibility evaluation, APA formatting |
| **Twitter** | Autonomous X account, 7 rotating content formats, approval queue before posting |
| **Browser** | Web automation via Playwright, mandatory purchase approval gate |

## Technical Stack

- **14 Rust crates**, 137,728 LOC
- **140+ REST/WS/SSE endpoints**
- **40 messaging channel adapters** (Telegram, Discord, WhatsApp, Slack, email, etc.)
- **27 LLM providers**, 123+ models with intelligent routing + cost tracking
- **OpenAI-compatible API** for drop-in replacement
- **MCP support** and P2P protocol (OFP)
- **Migration engine** from OpenClaw (Solomon/Hermes lineage)

## Security Hardening (16 layers)

Prompt injection scanner, loop guard (SHA256 circuit breaker), subprocess sandbox, GCRA rate limiter, Ed25519 manifest signing, WASM sandbox, CSP headers, path traversal prevention, etc.

## Verdict: 🔴 COMPETITOR — HIGH PRIORITY

This is the most direct competitor to Solomon OS we've seen:
- Same "AI works while you sleep" pitch
- Open source with commercial backing (RightNow AI)
- Production-grade, not a hobby project
- 16.6k stars shows market validation

**Our advantages:**
- Zo's orchestration depth and strategic reasoning
- Solomon OS business logic layer
- Telegram-first, already integrated with Russell Tuna
- Zo Computer platform backing

**Their advantages:**
- Rust-hardened, enterprise security
- One-command install, works immediately
- Commercially backed with active development
- 7 ready-to-use Hands out of the box

**Recommended action:** Deep-dive architecture review. Clone and test. Pull specific patterns (HAND.toml manifest format, security hardening, LLM routing logic) into Solomon OS. This validates the market — if someone's backing this heavily, there's real money in it.
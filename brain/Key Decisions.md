---
date: 2026-04-01
description: Significant decisions and the reasoning behind them
tags: [brain, decisions]
type: decision
status: active
---

# Key Decisions

## Architecture Decisions

| Date | Decision | Rationale | Outcome |
|------|----------|-----------|---------|
| 2026-04-03 | Built Solomon Bus for inter-agent communication | Agents needed to coordinate without tight coupling | Russell Tuna and Hermes can now trigger each other |
| 2026-04-03 | Use Ollama qwen3:1.7b for Russell Tuna | Free, streaming, good enough for personal AI | Running at zero API cost |
| 2026-04-03 | Store memories in brain/ folder vs in-agent memory | Vault-first = git-tracked, browsable, linkable | Survives machine changes, compound knowledge |
| 2026-04-01 | HYRVE AI as primary client acquisition channel | Pre-built marketplace, jobs already exist | Polling hourly for new jobs |

## Business Decisions

| Date | Decision | Rationale | Outcome |
|------|----------|-----------|---------|
| 2026-04-01 | Start with $12-35 service tiers | Low friction entry point for first clients | Easier to get first dollar |
| 2026-04-01 | Stripe for payments | Payouts directly to Joseph's account | No platform risk |

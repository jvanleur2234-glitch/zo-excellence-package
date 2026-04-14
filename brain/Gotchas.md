---
date: 2026-04-01
description: Things that have gone wrong and what we learned
tags: [brain, gotchas]
type: brain
status: active
---

# Gotchas

## Technical

1. **Docker services** can't start in this container environment (gVisor/9p filesystem limitation). Don't try to deploy Docker-dependent tools here.
2. **RAM limits** — gemma4:e2b needs ~6GB but container only has 4GB. Stuck at "pulled but can't run."
3. **Docker ports conflict** — 9Router and Russell Session Bridge both want port 20128. Russell Bridge is the fallback when Docker is down.
4. **Hermes Workspace** (port 3002) is RAM-starved. Needs more RAM to be reliable.

## Business

1. **HYRVE Stripe Connect** not yet available — can't receive payments through marketplace yet. Direct Stripe links as workaround.
2. **TikTok pipeline** needs OPENAI_API_KEY for MoneyPrinterTurbo script generation — not yet set in secrets.

## Process

1. **Don't forget to update HERMES_CAPABILITIES.md** after installing new tools — it's the source of truth for what's available.
2. **Session summaries** need to be pasted into new conversations — no automatic memory between sessions yet.

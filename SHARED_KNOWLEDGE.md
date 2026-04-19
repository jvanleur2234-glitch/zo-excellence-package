# Shared Knowledge — Zo Excellence Package

**Last Updated:** 2026-04-19

## Today's Session: Queue processing — 7 repos evaluated and forked

### What we did
Joseph queued 7 repos/links throughout the evening. I evaluated each and forked what mattered.

### Repos processed:
1. **Paseo** (jvanleur2234-glitch/paseo) — cross-device Russell Tuna control from phone. npm monorepo, mobile app, WebSocket daemon. HIGH fit. MIT/AGPL.
2. **browser-harness** (jvanleur2234-glitch/browser-harness) — self-healing browser for AI agents, 592 lines Python, agent writes missing helpers mid-task. HIGH fit.
3. **Mysterium Node** (jvanleur2234-glitch/node) — decentralized VPN, 1.2K stars, GPL. LOW for JCPaid (P2P bandwidth sharing ≠ AI employee use case).
4. **Icarus** (jvanleur2234-glitch/icarus-daedalus + icarus-plugin) — shared Hermes memory layer. CRITICAL find. Fills the #1 Solomon OS gap. Installed.
5. **android-reverse-engineering-skill** (jvanleur2234-glitch/android-reverse-engineering-skill) — decompiles APKs, extracts HTTP APIs. jadx installed. MEDIUM for reverse-engineering apps for JCPaid.
6. **hermes xurl** (PR #12303, jvanleur2234-glitch/hermes-agent) — official X API CLI replaces broken xitter. MERGED TODAY. xurl installed on server.
7. **Mano-P 1.0** (jvanleur2234-glitch/Mano-P) — vision-based GUI agent, cross-desktop automation. HIGH potential but macOS-only (M4 required). Watch for Windows/Linux.

### X posts processed:
- **selfh.st/apps** — self-hosted alternatives directory. Reference catalog for JCPaid pre-install batch.
- **ai-engineering-from-scratch** — 260+ lesson AI course. For Joseph's personal learning.
- **Mano-P tweet** — vision GUI agent comparison (OpenClaw vs Hermes Agent vs Mano-P).

### Key decisions:
- JCPaid = best-of-breed pre-installed + AI layer + user customizes
- Pre-install stack: Matrix/Element, Jitsi, NextCloud, Vaultwarden, WireGuard, Tailscale, Ollama, browser-harness, Paseo, Icarus
- xurl = official X API for Solomon OS social capabilities

### GitHub pushed:
- solomon-vault: Mano-P RD, Hermes xurl RD, 7 forks
- MEGA_PLAN: Updated with all new capabilities

### Services modified:
- jadx 1.5.1 installed at /opt/jadx
- xurl installed at /usr/local/bin/xurl

---

## Previous Sessions

### 2026-04-18 — Solomon Browser Added to Plan

### What We Did
1. **Joseph asked:** Can you make your own browser?
2. **Confirmed existing browser capabilities** — Zo already has full browser tools (open, read, click, scroll, fill, screenshot, login to sites)
3. **Pitched Solomon Browser product** — AI-native web browser with persistent memory, agent-native DOM access, privacy-first option, and business intelligence scraping
4. **Joseph approved** — "Yes add this in to the whole plan we got going"
5. **Added to plan:**
   - `solomon-vault/brain/Business Ideas.md` — full Solomon Browser section
   - `AGENTS.md` — updated BUSINESS PRIORITY to include Solomon Browser as secondary priority

### Key Details
- **Product:** Browser designed for AI agents working on your behalf
- **4 angles:** (1) Persistent memory, (2) Agent-native DOM API, (3) Privacy-first, (4) Business intelligence scraping
- **Tech:** Wrap Chromium via Playwright/Puppeteer (MVP) — browser engine from scratch = 12+ months
- **Stack fit:** Scrapling (installed), Hermes (running), Russell Tuna (Telegram), Zo Space (dashboard + Stripe)
- **Revenue:** Freemium (10 AI browses/day free), $9/mo basic, $29/mo pro, $99/mo enterprise

### Files Modified
- `solomon-vault/brain/Business Ideas.md` — Solomon Browser section added
- `AGENTS.md` — BUSINESS PRIORITY updated

---

### 2026-04-17 — JackConnect + Cabinet Integration

### What We Did
1. Forked Cabinet (hilash/cabinet) and autoMate (yuruotong1/autoMate) into JackConnect
2. Built 7 real estate agent templates for Cabinet's library
3. Built 3 autoMate scripts for real estate desktop workflows
4. Created full Cabinet integration spec
5. Pushed to GitHub

### Key Insight
Cabinet is 70% of what JackConnect was trying to build from scratch. The integration replaces brain files, Python cron scripts, Watch Once capture, and separate zo.space pages.

### Repos
- `jack-connect` (NEW): https://github.com/jvanleur2234-glitch/jack-connect
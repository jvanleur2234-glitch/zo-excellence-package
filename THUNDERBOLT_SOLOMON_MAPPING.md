# Thunderbolt → Solomon OS Architecture Mapping

## Overview

Thunderbolt (Mozilla's open-source AI client) is the **desktop/mobile shell** that becomes Solomon OS. Every layer of Thunderbolt maps to a Solomon OS component.

---

## Thunderbolt Architecture → Solomon OS

```
Thunderbolt                          Solomon OS
─────────────────────────────────────────────────────────────────────────────
TAURI SHELL (Desktop/iOS/Android)    →  Be Like You! OS Shell
  ├─ React Frontend                   →  Solomon UI (React 19 + custom)
  ├─ Zustand + TanStack Query         →  Solomon State (per-user brain)
  ├─ Vercel AI SDK + MCP Client       →  Solomon Air + Hermes integration
  ├─ E2E Encryption (AES-256-GCM)     →  Solomon Guardian (security layer)
  └─ SQLite (offline-first)           →  Per-user memory DB (SQLite/DuckDB)

SERVER INFRASTRUCTURE                →  Solomon Cloud (self-hosted or cloud)
  ├─ Elysia on Bun (Backend API)      →  Paperclip API (orchestration layer)
  ├─ Auth (Better Auth + OTP + OIDC)  →  Solomon Auth (per-user auth)
  ├─ Inference Proxy                   →  Ollama + OpenFang gateway
  ├─ PowerSync (sync engine)           →  Solomon Sync (cross-device brain sync)
  └─ PostgreSQL                        →  Solomon DB (users, logs, billing)

EXTERNAL SERVICES                     →  Solomon Integrations
  ├─ LLM Providers                    →  Ollama (local) + Groq/OpenRouter
  ├─ OAuth (Google/Microsoft)         →  OAuth hub (all providers)
  ├─ PostHog (Analytics)              →  Solomon Analytics (own analytics)
  └─ Resend (Email)                   →  Solomon Mailer (built-in email)

AGENT LAYER (not in vanilla TB)      →  Solomon OS Native
  ├─ (none)                           →  Hermes Agent (memory + reasoning)
  ├─ (none)                           →  Solomon Air (AI dialer/voicemail)
  ├─ (none)                           →  JackConnect (worker management)
  ├─ (none)                           →  Solomon Bus (inter-agent comms)
  └─ (none)                           →  Solomon Guardian (autonomous security)
```

---

## What Solomon OS Adds ON TOP of Thunderbolt

### 1. Solomon Air (AI Phone System)
- **Thunderbolt has**: Chat + search interfaces
- **Solomon OS adds**: AI-native calling, voicemail, scheduling
- **Implementation**: Replace or augment the chat UI with VoIP components (SIP.js + WebRTC)
- **Free calls**: Via Solomon Air P2P or VoIP — no carrier bills

### 2. Hermes Agent (System-Wide AI)
- **Thunderbolt has**: MCP client for connecting agents
- **Solomon OS adds**: Hermes runs as a **system service** — always-on, context-aware
- **Integration point**: MCP server inside Thunderbolt backend → Hermes Agent
- **Memory**: Per-user brain that survives sessions, built on SQLite

### 3. JackConnect (Worker Management)
- **Thunderbolt has**: User accounts + settings
- **Solomon OS adds**: Spawn AI worker personas (Russell Tuna forks) per client
- **Implementation**: Add a "Team" tab in Thunderbolt UI — list of active AI workers
- **Each worker**: Has its own memory, its own Stripe identity, its own client

### 4. Solomon Bus (Inter-Agent Communication)
- **Thunderbolt has**: Single-user chat interface
- **Solomon OS adds**: Multi-agent message bus — agents talk to each other
- **Implementation**: New `solomon-bus` service → Thunderbolt MCP server subscribes

### 5. Solomon Guardian (Autonomous Security)
- **Thunderbolt has**: E2E encryption (in development)
- **Solomon OS adds**: Active threat monitoring, zero-day detection, daily Guardian Reports
- **Implementation**: Security agent runs alongside Thunderbolt backend — watches logs, updates rules autonomously

### 6. Solomon Sync (Cross-Device Brain Sync)
- **Thunderbolt has**: PowerSync (sync engine, in development)
- **Solomon OS adds**: Per-user brain syncs across ALL devices — desktop, phone, tablet
- **Your Zo Computer**: Acts as the central brain hub
- **Flow**: Thunderbolt device ↔ Solomon Sync ↔ Zo Computer (brain hub)

### 7. Solomon Skills Marketplace
- **Thunderbolt has**: MCP server integrations
- **Solomon OS adds**: Developers contribute "Solomon Skills" — AI-powered features sold for money
- **Implementation**: Skills listed in Solomon Marketplace → installed into Thunderbolt via MCP

### 8. Be Like You! Tube
- **Thunderbolt has**: (not applicable)
- **Solomon OS adds**: YouTube competitor — verified human-created content only
- **Implementation**: Separate service, but accessible from Solomon OS shell

---

## Build Order (How to Actually Do This)

### Phase 1: Desktop Shell (Thunderbolt as-is)
1. Fork Thunderbolt: `git clone https://github.com/jvanleur2234-glitch/thunderbolt`
2. Get it running: `cd thunderbolt && bun install && bun run dev`
3. Connect Ollama locally (free inference)
4. Add your API keys (Groq/OpenRouter) in settings

### Phase 2: Embed Solomon Stack
1. Add Hermes Agent as an MCP server in the backend
2. Add Solomon Air (SIP.js for VoIP) in the frontend
3. Add JackConnect panel (list AI workers per client)
4. Connect to your Zo Computer as the brain hub

### Phase 3: Solomon OS Mobile (Tauri mobile targets)
```
Thunderbolt already supports iOS + Android via Tauri
  → Build mobile apps from the SAME codebase
  → Add vphone-cli for free calls/texts over WiFi
  → Add Ollama on-device for offline AI
  → Solomon Air becomes default dialer
  → Hermes runs as system-wide AI service
```

### Phase 4: Solomon Cloud (Self-Hosted)
```
Current: Thunderbolt backend runs on your server
Target: One-click Solomon OS cloud deployment
  → Docker Compose (like current n8n setup)
  → Includes: Thunderbolt backend + Hermes + Solomon Bus + PostgreSQL
  → Users sign up → get their own Solomon instance
```

---

## Key Technical Integrations

### ThunderBolt Backend + Solomon Air
```typescript
// backend/src/api/routes.ts — add Solomon Air endpoints
POST /api/solomon/call        → Initiate AI call via Solomon Air
POST /api/solomon/voicemail   → Transcribe + store voicemail
GET  /api/solomon/schedule    → Get AI-managed schedule
```

### ThunderBolt Frontend + Hermes Agent
```typescript
// src/hooks/useHermes.ts — Solomon Brain hook
// Reads from per-user SQLite → sends context to Hermes Agent
// Stores responses back to local brain DB
```

### ThunderBolt MCP → Solomon Bus
```typescript
// MCP server in Thunderbolt connects to Solomon Bus
// Multiple Thunderbolt instances (desktop + phone) share a Solomon Bus
// Each user has their own isolated bus channel
```

### ThunderBolt + vphone-cli (Free Calls)
```typescript
// vphone-cli runs as a system service on mobile
// Thunderbolt mobile app communicates with vphone-cli via IPC
// Solomon Air routes calls over WiFi, not carrier
```

---

## The Core Insight

Thunderbolt is the **open-source foundation** — cross-platform, offline-first, E2E encrypted, model-agnostic.

Solomon OS is Thunderbolt **with a soul** — an always-on AI that remembers everything, manages your workers, handles your calls, and never stops learning.

The build order:
1. Run Thunderbolt (done — it's forked)
2. Add Hermes (system-wide AI brain)
3. Add Solomon Air (AI phone system)
4. Add JackConnect (client worker management)
5. Add Solomon Bus (multi-agent communication)
6. Add Solomon Guardian (autonomous security)
7. Add Solomon Sync (cross-device brain sync)
8. Add Skills Marketplace (developer contributions)
9. Ship mobile (Tauri iOS/Android targets)
10. Ship Be Like You! Tube (human-verified video)

---

## Status Tracker

| Component | Thunderbolt | Solomon OS | Status |
|-----------|------------|------------|--------|
| Desktop shell | ✅ | ✅ (forked) | Ready |
| Mobile shell | ✅ (Tauri) | 🔄 | In progress |
| Local LLM | ✅ (Ollama) | ✅ | Working |
| API inference | ✅ | ✅ (OpenFang) | Working |
| User auth | ✅ | ✅ | Working |
| E2E encryption | 🔄 (dev) | ✅ (Guardian) | Enhancing |
| Hermes Agent | ❌ | ✅ | To integrate |
| Solomon Air | ❌ | ✅ | To integrate |
| JackConnect | ❌ | ✅ | To integrate |
| Solomon Bus | ❌ | ✅ | To integrate |
| Solomon Guardian | ❌ | ✅ (arch doc done) | Designing |
| Solomon Sync | 🔄 (PowerSync) | ✅ (Zo as hub) | To design |
| Skills Marketplace | ❌ | ✅ | To design |
| vphone (free calls) | ❌ | ✅ | To integrate |

---

*Last updated: 2026-04-19*

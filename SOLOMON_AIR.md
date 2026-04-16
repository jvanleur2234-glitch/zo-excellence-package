# SOLOMON AIR — MASTER PLAN
**The Airlines Not Railroads**
*Build decentralized AI infrastructure that nobody controls*

---

## WHAT IS SOLOMON AIR?

The vision: **Decentralized AI that runs on YOUR hardware, on YOUR network, under YOUR control.**

Companies like Google, Microsoft, and OpenAI want to control AI by putting it on their clouds. Solomon Air is the opposite — AI that lives on devices you own, networks you control, that can't be shut down or surveilled.

---

## THE 4 LAYERS

### Layer 1 — Privacy First (Year 1)
**Problem:** Big AI sees everything you do.
**Solution:** Local-first AI that never phones home.

| Repo | Stars | Purpose | Solomon Air Role |
|------|-------|---------|-----------------|
| **solomon-air** (NOMAD fork) | 23.8K | Offline knowledge server | Core install experience |
| **Thoth** | 1.4K | Local AI agent + knowledge graph | Personal AI brain |
| **RustDesk** | 111K | Self-hostable remote desktop | Remote support without TeamViewer |
| **Maxun** | 15.4K | No-code web scraping/AI data | Marketplace intelligence |
| **Bonsai 1.7B** (PrismML) | NEW | TRUE 1-bit LLM, 290MB, 100 tok/s in browser | **The holy grail — AI that runs anywhere** |

### Layer 2 — Compute Network (Year 1-2)
**Problem:** Local AI is limited by your hardware.
**Solution:** Distributed compute network where people earn by sharing GPU power.

| Repo | Stars | Purpose | Solomon Air Role |
|------|-------|---------|-----------------|
| **Hyperspace** | 2M+ nodes | P2P AI inference network | Peer-to-peer compute sharing |
| **Bittensor (TAO)** | — | Blockchain-based AI marketplace | Incentivize compute contributions |
| **LocalAI** | — | Run LLMs on any hardware | Compute node software |
| **d-inference** | — | Privacy-preserving TEE inference | Verify compute without seeing data |

### Layer 3 — Sovereign Communication (Year 2)
**Problem:** Internet can be shut down or surveilled.
**Solution:** Mesh networking + off-grid communications.

| Repo | Stars | Purpose | Solomon Air Role |
|------|-------|---------|-----------------|
| **Reticulum** | — | Serverless mesh networking | Off-grid AI communication |
| **Ratspeak** | — | Accountless encrypted messaging | Identity without accounts |
| **Coolify** | 53K | Self-hostable PaaS | Deploy anywhere without cloud |

### Layer 4 — Open Ecosystem (Year 2-3)
**Problem:** Nobody can verify if AI is being honest.
**Solution:** Open standards, auditable AI, community governance.

| Repo | Stars | Purpose | Solomon Air Role |
|------|-------|---------|-----------------|
| **RAGFlow** | 78.2K | Production RAG engine | Knowledge retrieval layer |
| **Dayflow** | — | Cursor/AI workflow automation | Integrate AI actions |
| **OpenSwarm** | — | Open multi-agent coordination | Agent-to-agent protocols |
| **meta-harness** | Stanford | AI evaluation framework | Verify model quality |

---

## JOE'S BUSINESSES THAT FEED INTO SOLOMON AIR

### JackConnect — AI Employee for Real Estate
- **What:** Jack Vanleur's personal AI worker for Alpine Real Estate
- **Stack:** Thoth (brain) + Maxun (data) + RustDesk (support) + Screenpipe (screen capture)
- **Status:** Built, needs beta users
- **Revenue:** $30-100/mo subscription

### FakerFaker — Facebook Scam Detector
- **What:** Paste a Facebook profile link → AI tells you if it's a scammer
- **Stack:** Ollama (local AI) + Maxun (scraping)
- **Status:** Live at josephv.zo.space/fakerfaker
- **Revenue:** Freemium ($5/mo for unlimited checks)

### Lume — AI Grading App
- **What:** AI-powered paper grading for educators
- **Status:** Live on zo.space

### SubTrim Pro — Subscription Management
- **What:** Track and cancel subscriptions
- **Status:** $2.99/mo Stripe product live

---

## PHASE 1 BUILD ORDER

1. **Week 1:** Bonsai 1.7B integration (290MB 1-bit LLM in browser) ✅ **LIVE April 16** — `https://josephv.zo.space/bonsai`
2. **Week 2:** Thoth → JackConnect brain
3. **Week 3:** Maxun → FakerFaker real scraping
4. **Week 4:** RustDesk → Remote support for JackConnect
5. **Week 5:** Coolify → Self-host Solomon Air deploy

> **NOTE on NOMAD:** The `solomon-air` GitHub fork points to the brand repo. The actual NOMAD codebase we run is **project-nomad** — cloned from Crosstalk-Solutions/project-nomad. This is the one-command Ubuntu install with browser UI and offline knowledge server. Bonsai (WebGPU 1-bit LLM in browser) is the Layer 1 privacy anchor. Both are operational pieces of the Solomon Air Layer 1 stack.

---

## ALL GITHUB REPOS FORKED

| Repo | Forked URL | Key For |
|------|-----------|---------|
| solomon-air | jvanleur2234-glitch/solomon-air | Core brand |
| screenpipe | jvanleur2234-glitch/screenpipe | Screen capture |
| Thoth | jvanleur2234-glitch/Thoth | Local AI agent |
| maxun | jvanleur2234-glitch/maxun | Web scraping |
| linux-android | jvanleur2234-glitch/linux-android | Mobile dev |
| coolify | jvanleur2234-glitch/coolify | Self-host PaaS |
| KittenTTS | jvanleur2234-glitch/KittenTTS | Local TTS |
| rustdesk | jvanleur2234-glitch/rustdesk | Remote desktop |
| moonshine | jvanleur2234-glitch/moonshine | Local LLM |
| deterministic-inference | jvanleur2234-glitch/deterministic-inference | TEE inference |
| gbrain | jvanleur2234-glitch/gbrain | SKILLPACK patterns |
| fakerfaker | jvanleur2234-glitch/fakerfaker | Scam detector |
| **neko** | jvanleur2234-glitch/neko | **Remote browser (WebRTC, Solomon Air Layer 1)** |
| **pashov/skills** | jvanleur2234-glitch/skills | **Skill format reference (SKILL.md + VERSION + refs)** |
| **easy-invoice-pdf** | jvanleur2234-glitch/easy-invoice-pdf | **Invoice skill engine** |
| **solomon-skills** | jvanleur2234-glitch/solomon-skills | **JackConnect skill library (6 skills live)** |

## BONSAI INTEGRATION (April 16, 2026)

**Live at:** https://josephv.zo.space/bonsai

Bonsai 1.7B WebGPU page built — runs entirely in browser, 290MB, ~100 tok/sec. First local LLM in Solomon Air Layer 1.

Bridge to JackConnect: `/home/workspace/jack-connect/bonsai-bridge/bridge.py` — Ollama-compatible API using ONNX Runtime Q4 (1.1GB). Ready to integrate when JackConnect ships.

**Skill Store:** https://github.com/jvanleur2234-glitch/solomon-skills — 6 skills (CMA, Lead Qualifier, Market Intel, Client Nourisher, Invoice, Transaction Tracker)

---

## THE BIG INSIGHT

**The airlines own the infrastructure, not the planes.**

Solomon Air doesn't build AI models. It builds the **infrastructure layer** that connects:
- People who need AI → People who run AI on their hardware
- People who run compute → People who get paid for it
- People who build skills → People who use them

We make money on the infrastructure, not the AI itself.

---

*Last updated: April 16, 2026*

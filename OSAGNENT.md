# OSagnent — The AI-Native Operating System

**Status:** CONCEPT — Uniqueness: LOCAL. SELF-LEARNING. SELF-GENERATING. SELF-CLONING.

## The Vision

Every business has the same problem: employees spend 60% of their time doing routines that could be automated. OSagnent watches your employees for 6 months, learns every job, generates its own AI agents to do those jobs, then clones itself as a complete workforce per department — all running LOCAL, never touching the cloud.

## Why This Is New

Every AI product today is reactive — you tell it what to do. OSagnent is proactive — it watches what you DO and learns to replace itself.

| Product | What it does | OSagnent difference |
|---|---|---|
| ChatGPT/Claude | You prompt, AI answers | OSagnent watches and learns from observing |
| n8n/MAKE | You build workflows | OSagnent discovers workflows by watching |
| ERP systems | You configure processes | OSagnent extracts processes from behavior |
| Consulting | Humans map and automate | OSagnent does it autonomously |

## The Stack

```
OSagnent = holaOS (base OS layer)
        + Hermes (execution engine)
        + The Agency (147 AI agents)
        + UI-TARS (visual observation)
        + Camofox (browser automation)
        + here.now (10GB per-employee memory)
        + MemOS (pattern recognition)
        + DeepSwarm (parallel learning)
        + JCPaid Bus (fleet management)
        + Kill Switch (budget enforcement)
        + TinyFish (web intelligence)
```

## The Observation Pipeline

```
Employee works → UI-TARS screenshots (screen capture)
              → Camofox browser logs (web activity)
              → Hermes tool calls (every action)
              → OSagnent Observe plugin (pre/post hooks)
              → here.now (raw observation storage, 10GB each)
              → MemOS (pattern recognition)
              → DeepSwarm (parallel training batches)
              → Self-generated agents (learned skills)
              → Clone factory (department-specific workforce)
```

## What's Cloned

- `/home/workspace/holaOS/` — Agent OS base
- `/home/workspace/UI-TARS-desktop/` — Visual learning (ByteDance)
- `/home/workspace/camofox-browser/` — Browser automation
- Hermes observe plugin — `~/.hermes/plugins/osagnent-observe/`
- Kill Switch API — running on port 5015

## Kill Switch — Running

```
$ curl http://localhost:5015/health
{"status":"ok","ts":"2026-05-08T13:16:56.903Z","agents":0,"spending":{}}

$ curl -X POST http://localhost:5015/register -H "Content-Type: application/json" -d '{"agentId":"jcpaid_001","name":"JCPaid Worker","budgetLimit":5000}'
{"success":true}

$ curl -X POST http://localhost:5015/allow -H "Content-Type: application/json" -d '{"tool":"terminal","args":{"command":"ls"},"workerId":"jcpaid_001"}'
{"allowed":true,"cost":30,"remaining":5000,"agentId":"jcpaid_001","reason":""}
```

## Enterprise Pricing Model

| Tier | Target | Price |
|---|---|---|
| Starter | 1-10 employees | $299/mo per employee |
| Professional | 11-50 employees | $249/mo per employee |
| Enterprise | 50+ employees | Custom — air-gapped data center |

**Cost to deliver:** ~$3/employee/month (here.now storage + compute)
**Margin:** 8,200%+ at $249/mo

## The Moat

1. **First-mover observation data** — 6 months of watching = proprietary workflow library no competitor can replicate
2. **Self-improving agents** — learned from real behavior, not人工 prompts
3. **Air-gapped enterprise** — bank-grade security, no cloud dependency
4. **Clone factory** — per-department AI workforce generated automatically

## Next Steps

1. ✅ Kill Switch API — live at port 5015
2. ✅ Hermes OSagnent Observe plugin — installed at `~/.hermes/plugins/osagnent-observe/`
3. ✅ holaOS cloned — base OS layer
4. ✅ UI-TARS desktop cloned — visual observation
5. ✅ Camofox browser cloned — stealth browsing
6. ⏳ here.now API key — for 10GB per-employee storage
7. ⏳ MemOS integration — pattern recognition on observations
8. ⏳ DeepSwarm pipeline — parallel training from observation batches
9. ⏳ Clone factory — generate department agents from learned patterns
10. ⏳ JCPaid Bus integration — fleet management UI

---

*Built by JCPaid — Joseph Vanleur's AI Employee Agency*
*Last updated: 2026-05-08*

# JackConnect Desktop — SPEC.md
**Version:** 1.0
**Date:** 2026-04-13
**Status:** Ready to build
**Product Name:** JackConnect Desktop — Powered by Solomon OS

---

## 1. Concept & Vision

**Tagline:** "Do it once. Agent does it forever."

JackConnect Desktop is a lightweight system-tray app that watches what Jack does — then turns it into an AI agent workflow he can run on schedule, forever, without touching his computer again.

It is NOT a chatbot. It does NOT reason in real-time. It records a task once, shows Jack exactly what it will do in plain English, gets his permission, then runs it autonomously forever.

**The feeling:** A trusted employee who watched you do something once, took notes, and now does it for you every time without being asked.

**Built on:** Solomon OS (Zo + Hermes + Ollama) + JackConnect API

---

## 2. The Problem It Solves

Every real estate agent does the same repetitive tasks every day:
- Send personalized emails to new leads
- Update a tracker in Google Sheets
- Post to Zillow/Realtor.com
- Follow up with past clients
- Draft social media posts
- Schedule showings

**What Jack wants:**
1. Do it once → never do it again
2. Know exactly what the AI is doing
3. Approve everything before it runs
4. Stop it instantly if something looks wrong
5. Trust it runs correctly without watching

---

## 3. Product — 3 Modes

### Mode 1: LEARN (Record)
Jack clicks "Learn Mode" in the system tray. He does the task normally — one time. Clicky watches silently and captures every step. When Jack clicks "Stop Learning" → the full workflow appears in plain English.

### Mode 2: REVIEW (Approve)
Clicky shows every step with plain English descriptions and risk levels. Jack approves each step and sets permissions. Approved steps run forever on schedule.

### Mode 3: RUN (Autonomous)
Workflow runs on schedule. Jack gets Telegram notifications. If anything unexpected → Clicky stops and alerts him.

---

## 4. Trust & Safety

### Threat Level Badge
Always visible in system tray:

| Level | Color | Meaning |
|---|---|---|
| GREEN | 🟢 | Normal — all approved workflows running |
| YELLOW | 🟡 | Something unexpected — agent stopped and is asking |
| RED | 🔴 | All paused — Jack must review and resume |

### Stop Everything Button
Always accessible in tray. One click = all workflows stop immediately. Shows resumption screen.

### Permission System (from OneMega)
Permissions are scoped by default:
- "Send emails" → only to addresses from approved lead sources
- "Access Google Sheets" → only the specific tracker spreadsheet
- "Post to social" → only during business hours

---

## 5. Architecture

```
JackConnect Desktop (Tauri — Jack's computer)
├── System Tray Icon
│   ├── 🟢/🟡/🔴 Threat Level Badge
│   ├── Learn Mode toggle
│   └── STOP button
├── Learn Mode
│   ├── Input capture (clicks, keystrokes, app context)
│   ├── AI Step Tagger (labels each step)
│   └── Workflow Preview
├── Workflow Review
│   ├── Step-by-step plain English list
│   ├── Permission toggles per step
│   └── Approve / Edit / Delete
└── API Client → POST to JackConnect Server

JackConnect Server (Solomon OS / Zo Space)
├── /api/workflows — receive, store, manage
├── /api/run/:workflow_id — execute on schedule
├── Hermes Agent — runs actual tasks
│   ├── Reads Gmail, sends emails
│   ├── Updates Google Sheets
│   └── Posts to social
├── Telegram Bot — notifies Jack
└── Stripe — subscription billing
```

---

## 6. The 7 Agents Connected to Clicky

| Agent | What it does | Trigger |
|---|---|---|
| Lead Inbox Agent | Reads new leads from Zillow, Realtor.com | Every 15 min |
| Email Agent | Sends personalized emails to new leads | On new lead |
| Tracker Agent | Updates Google Sheet with lead status | On status change |
| Follow-Up Agent | Sends 3-email follow-up sequence over 7 days | Scheduled |
| Social Agent | Posts to LinkedIn/Facebook about new listings | On new listing |
| Listing Agent | Creates property showcase emails | Manual |
| Market Report Agent | Sends monthly market update to past clients | 1st of month |

---

## 7. What Makes This Different

| Tool | What it does | Our advantage |
|---|---|---|
| ChatGPT | Answers questions | We DO the work |
| Claude | Writes emails | We SEND the emails |
| Zapier | Connects apps | We LEARN from Jack's actions — he programs nothing |
| Browser-use | AI browser agent | We run on SCHEDULE without Jack being at his computer |

---

## 8. Build Phases

### Phase 1 — MVP (2 weeks)
- Tauri desktop app: system tray, Learn Mode, step recorder
- Record Gmail web, Google Sheets web, generic click/type
- Workflow preview + permission screen
- POST to JackConnect server
- Hermes runs workflow on schedule
- Telegram notification

**Deliverable:** Jack records "New Zillow Lead Email" workflow. It runs automatically on new lead.

### Phase 2 — Expand (2 weeks)
- Add Zillow/Realtor.com recording
- Add LinkedIn recording
- Add file upload/download

### Phase 3 — Intelligence (3 weeks)
- AI auto-tagging of steps
- Smart suggestion: "I noticed you do this every Monday — schedule it?"
- Anomaly detection
- Auto-pause on unusual behavior

### Phase 4 — Multi-Client (4 weeks)
- Unlimited clients on server
- Agent broker marketplace
- White-label for agencies
- Stripe subscription billing

---

## 9. Pricing

| Tier | Price | What's included |
|---|---|---|
| Starter | $99/mo | 1 agent + Clicky |
| Professional | $199/mo | All 7 agents + Clicky |
| Agency | $499/mo | Unlimited workflows + white-label |

---

*JackConnect Desktop — Built on Solomon OS*
*Version 1.0 | 2026-04-13*

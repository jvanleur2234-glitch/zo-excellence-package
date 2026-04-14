# Services.md — Solomon OS Agent Services

*What each agent does, how to access them, and what they own.*

---

## Agent Roster

| Agent | Role | Platform | Status |
|-------|------|----------|--------|
| Zo (CEO) | Orchestration, building, strategy | Zo Computer | ✅ Active |
| Russell Tuna | Client comms, Telegram, outreach | t.me/RussellTunaBot | ✅ Active |
| Hermes | Execution layer — skills, builds, tools | localhost:3101 | ✅ Active |
| CashClaw | SEO audits, lead generation, cold email | CLI | ✅ Built |
| JackConnect | First client agent — real estate | Custom | 🔨 In progress |
| Clicky | Watch-once workflow automation | Planned | 📋 Not started |
| Solomon Bus | Inter-agent communication | Bus daemon | ✅ Active |
| Job Runner | Persistent background jobs | Daemon | ✅ Active |

---

## How to Invoke Each Agent

### Russell Tuna (Telegram)
- **Access:** t.me/RussellTunaBot
- **Commands:** `/start`, `/fork [task]`, `/help`
- **Use for:** Client-facing conversations, outreach, content posting

### Hermes (CLI)
- **Access:** `hermes --help`
- **Skills registry:** `/home/workspace/hermes-skills/`
- **Use for:** Execution tasks, tool runs, builds

### CashClaw (CLI)
- **Access:** `cashclaw audit --url <url> --tier <tier>`
- **Use for:** SEO audits, lead generation, cold email delivery
- **Billing:** Stripe integration via CLI

### JackConnect (Custom Agent)
- **Owner:** Jack Vanleur (first paying client)
- **Use for:** Real estate agent workflows — listings, follow-ups, lead intake, CMA
- **Status:** Built April 11, needs packaging for commercial sale

### Clicky (Planned)
- **Concept:** Watch Joseph do something once → record → turn into permanent workflow
- **Use for:** Democratizing workflow creation — show the AI one time, it automates forever
- **Status:** Not started — pending Phase 1

---

## Service Health Checks

```bash
# All services
cat /home/workspace/.agent/status/services.json

# Individual checks
curl -s localhost:3101/health  # Hermes
curl -s localhost:11434/api/tags  # Ollama
```

---

## Adding a New Service

1. Document the service in this file
2. Add to the agent roster table above
3. Create a health check entry in `/home/workspace/.agent/status/monitor.sh`
4. If external: register as a user service via Zo dashboard
5. Update SHARED_KNOWLEDGE.md with any new capabilities

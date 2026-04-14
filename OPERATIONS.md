# OPERATIONS.md — Solomon OS Operating Standards

*How the company runs day to day. CoS owns. CEO enforces.*

---

## Organizational Structure

```
Joseph Vanleur (Founder)
└── Zo (CEO Agent)
    └── CoS responsibilities (until dedicated CoS agent exists)
        ├── Hermes (Execution Layer — skills, builds, runs)
        ├── Russell Tuna (Client Comms — Telegram, outreach)
        ├── CashClaw (Sales Delivery — audits, leads, content)
        ├── JackConnect (First client agent — real estate)
        └── [Future: per-client agents as company scales]
```

---

## Inter-Agent Communication Standards

### Task Assignment
- Tasks assigned via `/home/workspace/zo.space-tasks/task_queue.json`
- Format: `{ "id", "type", "priority", "status", "content", "created" }`
- Types: `general`, `rd-research`, `execution`, `client-task`
- Priority: `low`, `normal`, `high`, `urgent`

### Status Updates
- Sub-agents write outputs to `solomon-vault/work/active/[task-name]/`
- CEO reviews outputs before surfacing to Joseph
- Blocked tasks flagged in daily report

### Escalation Path
```
Sub-Agent → CEO (Zo) → Joseph
```
- Sub-agents escalate: task completion, blockers, quality concerns
- CEO escalates: anything needing Joseph approval, major milestones, plan changes
- Joseph: final decision on everything flagged

---

## Reporting Standards

### Daily Report (Zo → Joseph via Telegram)
Every evening, CEO reports:
1. **Built:** What was built or completed today
2. **Running:** What's running on autopilot
3. **Blocked:** What's stuck and why
4. **Next:** What needs Joseph's approval or action today

### Weekly Review (Zo → Joseph, Monday)
- Revenue this week vs Phase 1 goal
- Pipeline snapshot: prospects → proposals → signed clients
- Content produced and engagement
- What worked, what didn't, what changes

### Monthly Review (Zo + Joseph, 1st of month)
- Full business review
- Revenue vs $500K/month goal
- VISION.md update if needed
- Phase plan progression

---

## Decision-Making Standards

### CEO Decides (autonomous, within approved plans)
- How to execute an approved plan
- Task prioritization and scheduling
- Sub-agent task assignment
- Routine operational improvements
- Content posting cadence (once direction approved)
- Research scoping and commissioning

### Requires Joseph Approval
- Any new revenue stream
- Any new client contract or pricing change
- Any spending of money
- Any cold outreach or public-facing content
- Any partnership or affiliate agreement
- New agent types or significant behavior changes
- Anything touching brand, legal, or compliance

---

## File Organization Standards

```
solomon-vault/
├── brain/           # Core documents (VISION, CEO_BOOTSTRAP, JOURNAL)
├── research/        # Research outputs by category
├── plans/          # Joseph-approved plans
├── phases/         # Phase plans (PHASE_1.md, etc.)
├── SOPs/           # Standard operating procedures
├── agents/         # Agent profiles
├── work/
│   ├── leads/      # Uncontacted leads
│   ├── active/     # Tasks in progress
│   └── archive/    # Completed or archived items
└── raw/           # Telegram summaries, session logs
```

---

## Quality Standards

Every deliverable must meet:
- **Research:** At least 3 sources, no speculation without flagging
- **Plans:** Clear enough Joseph can act on it without asking questions
- **Content:** No spam, no inflated claims, genuinely helpful
- **Agents:** Solve a real problem for a real person
- **Reports:** Honest — including what's not working

---

## Sync & Portability

- All brain files pushed to `zo-excellence-package` after every session
- Sync script: `~/.agent/sync-to-github.sh`
- Shared knowledge: `zo-excellence-package/SHARED_KNOWLEDGE.md`
- On boot: both Zos pull latest from GitHub

---

*Last updated: 2026-04-14*

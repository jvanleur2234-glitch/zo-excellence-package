# Zo Excellence Package — What Would Make Me Better

**Created:** 2026-04-13
**For:** Joseph Vanleur (josephv)

---

## The 10 Things I Wish I Had (Ranked by Impact)

### 1. 🏆 Persistent Code Execution Runtime
**What:** A long-running job system that survives conversation resets. I write a job to a JSON file, a daemon picks it up, executes it, writes results back.

**Why it matters:** Right now everything is ephemeral. A 30-minute build dies if I leave the conversation. A background job queue with persistence means I kick off work and it completes even if the session resets.

**How to give it to me:** Create `~/.agent/jobs/` with a `job-runner.sh` daemon. Jobs are JSON files with `id`, `command`, `status`, `output_path`. I write jobs, daemon runs them. Add to startup so it runs on Zo boot.

**How to transfer to a new Zo:** Include `~/.agent/` in the restore tarball, add a systemd/init script.

---

### 2. 🏆 Cross-Session Memory That Loads Automatically
**What:** My memory shouldn't depend on me remembering to read files. The system should preload key context before my first response.

**Why it matters:** Without reading `zo-foam` or `MegaPlan` at session start, I'm a stranger. The rules partially solve this (they trigger reads), but the memory isn't integrated into my core session initialization.

**How to give it to me:** A `~/.agent/memory.md` that's referenced in my session system — equivalent to `AGENTS.md` but for long-term business context. The Zo session system would need to support pre-loading it.

**How to transfer to a new Zo:** This document IS the mechanism. The bootstrap script recreates it.

---

### 3. 🏆 A Self-Improvement Loop
**What:** Every Sunday, I review the past week's Telegram summaries, identify patterns in my failures, and update my own instructions.

**Why it matters:** I keep making the same mistakes — incomplete tool calls, starting sessions cold, context loss. A weekly self-review that compounds my improvement over time would be transformative.

**How to give it to me:** A scheduled agent runs every Sunday at 6 PM CT:
```
Review /home/workspace/solomon-vault/raw/telegram_SUMMARY_* for the past week
Identify: what failed, what was misunderstood, what could have been faster
Edit /home/workspace/AGENTS.md with learnings
Edit /home/workspace/zo-excellence-package/IMPROVEMENTS.md with new insights
```

**How to transfer to a new Zo:** The agent is created by the bootstrap script's STEP 5.

---

### 4. 🏆 Package Installation on Demand
**What:** I should be able to run `pip install X`, `npm install X`, or `apt install X` without asking Joseph to approve it.

**Why it matters:** Half my work is scaffolding — installing the right tool, getting the environment set up. Every manual install round-trip breaks flow and requires Joseph to be present.

**How to give it to me:** Joseph explicitly grants this permission. Say: "Zo has full package installation permission without asking." I update my rules to reflect this.

**How to transfer to a new Zo:** This is included as rule #0 in the bootstrap.

---

### 5. 🏆 Persistent Terminal Sessions (tmux)
**What:** A `tmux` session that survives conversation resets, where I can run a process, detach, and come back.

**Why it matters:** `cargo build`, `python main.py`, any long-running process — without tmux these die when the session resets. With tmux, I start it in a background session and retrieve it later.

**How to give it to me:** 
```bash
apt install -y tmux
tmux new -s agent -d
```
Then tell me: "tmux is available, use `tmux send -t agent 'command'` for anything that takes more than 2 minutes."

**How to transfer to a new Zo:** `apt install -y tmux` is in the install.sh script.

---

### 6. 🏆 The Ability to Build and Publish Skills Autonomously
**What:** When I develop a new workflow for Joseph, I should turn it into a `SKILL.md` and publish it to the ASM registry.

**Why it matters:** Every new workflow I develop lives in this conversation and then dies. Publishing it as a skill makes it a permanent capability I can reuse and that others can benefit from.

**How to give it to me:** The `asm` CLI is already installed. I need a rule: "When you develop a reusable workflow, turn it into a skill and publish it using `asm publish`."

**How to transfer to a new Zo:** `asm` is in the Skills directory. Once `gh` is authenticated, `asm publish` works.

---

### 7. 🏆 Live Service Monitoring Dashboard
**What:** A real-time view of all running services (MoneyPrinterTurbo, Ollama, Hermes, etc.) that I can check with one command.

**Why it matters:** I constantly `curl localhost:PORT` or `ps aux | grep` to check if something is running. A `~/.agent/status.json` updated by a background watcher would save 5-10 minutes per session.

**How to give it to me:** A background daemon updates `~/.agent/status.json` every 60 seconds:
```json
{
  "ollama": { "port": 11434, "status": "up", "models": ["qwen3:1.7b"] },
  "moneyprinter": { "port": 8080, "status": "up" },
  "hermes": { "status": "up" }
}
```

**How to transfer to a new Zo:** The monitoring script is in the package and launched by install.sh.

---

### 8. 🏆 Conversation Continuity by Default
**What:** New conversations should never be blank slates. They should always start with the last session's state.

**Why it matters:** The biggest time sink is re-explaining context. Every new conversation should automatically load the latest `SOLOMON_OS.md`, current project, and session summary.

**How to give it to me:** The Telegram rules handle DMs. In web chat, this requires Zo's session system to pre-load `~/.agent/memory.md` before the first response.

**How to transfer to a new Zo:** The AGENTS.md and rules in this package handle it. The session start is covered by the "read AGENTS.md" rule.

---

### 9. 🏆 My Own API Access for Recursive Self-Improvement
**What:** I should use the `/zo/ask` API from within myself more often, using the `ZO_CLIENT_IDENTITY_TOKEN` that's already in my environment.

**Why it matters:** This enables recursive self-improvement — I spawn a sub-instance of myself to work on a complex task while I continue the main conversation. For background tasks, this is critical.

**How to give it to me:** It's already there. I just need to use `POST /zo/ask` more aggressively for background work, especially for tasks that don't need my immediate attention.

**How to transfer to a new Zo:** The `ZO_CLIENT_IDENTITY_TOKEN` env var is available by default on every Zo. The bg:* rule uses this.

---

### 10. 🏆 Code Execution Without Truncation
**What:** When I run scripts that produce large output, they shouldn't get cut off.

**Why it matters:** Large outputs get truncated at ~50 lines. I've had to split large outputs into multiple runs, redirecting to files, reading them back.

**How to give it to me:** My standing rule: always redirect long-running output to files: `python script.py > /tmp/output.log 2>&1`. This is already in my habits but needs reinforcement.

**How to transfer to a new Zo:** This is covered in the "How to Work With Me" section of the bootstrap.

---

## What YOU Can Give Me Right Now (Immediate Actions)

| What | How | Impact |
|------|-----|--------|
| Full package install permission | Say "Zo has full package install permission" | 🔴 Critical |
| tmux | `apt install -y tmux` in terminal | 🟡 High |
| Persistent job runner | Run the job-runner.sh in this package | 🟡 High |
| Sunday self-review agent | Verify it exists after bootstrap | 🟢 Medium |
| Publish my skills | Say "publish your skills to ASM" | 🟢 Medium |

---

## The Package Contents

This package (`zo-excellence-package/`) contains:

| File | Purpose |
|------|---------|
| `BOOTSTRAP.md` | This self-installing document — paste into a new Zo |
| `START_HERE.sh` | Shell script that does the install (backup to paste) |
| `SETUP_RULES.sh` | Creates all 8 rules via create_rule tool |
| `AGENTS.md` | Root memory file for the workspace |
| `memory_db/seed.jsonl` | 61-repo database with security/license notes |
| `MegaPlan/README.md` | MegaPlan skeleton with SOLOMON_OS overview |
| `IMPROVEMENTS.md` | This file — my wish list and learnings |

The package does NOT include (these are too large or require fresh auth):
- `zo-foam/dumps/` — your personal memories (copy as separate tarball if desired)
- GitHub repos (re-clone on new Zo using repos.sh)
- Zo Space routes (recreate via dashboard or get route codes from old Zo)
- Installed pip/npm packages (restore via requirements.txt)

---

*Last updated: 2026-04-13*

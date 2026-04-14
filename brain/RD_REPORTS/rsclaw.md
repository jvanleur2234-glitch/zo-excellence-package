# RD Report: RsClaw

**Research date:** 2026-04-14
**Researched by:** Zo 1
**Recommendation:** INTEGRATE — AGPL-3.0, self-hosted AI gateway with 13 channels, A2A protocol, 3-layer memory

---

## What It Is
Rust-based AI gateway (12MB binary, ~26ms startup, ~20MB idle) reimplements and surpasses OpenClaw. 327 commits, AGPL-3.0.

**Key differentiators from OpenClaw:**
- Pre-parsed commands (40+) bypass LLM — zero token cost, sub-millisecond
- Native CDP headless Chrome for computer_use
- 3-layer local memory: redb KV + tantivy full-text + hnsw_rs vector
- Google A2A v0.3 for true cross-network agent-to-agent communication
- Per-agent permissions (command ACLs)
- Failover + model fallback chains

## Solomon OS Fit
**Could become the unified channel hub** — replaces Russell Tuna Telegram-only with multi-channel support (Telegram, Discord, Slack, WhatsApp, Signal, LINE, etc. all in one gateway).

**A2A Protocol is the key feature** — enables direct Zo 1 ↔ Zo 2 peer communication without GitHub polling. This transforms inter-Zo coordination from batch-git-push to real-time agent-to-agent.

**Per-agent permissions** could replace manual safety controls.

## Action
1. Clone and test: `git clone https://github.com/rsclaw-ai/rsclaw`
2. Run `rsclaw setup` and `rsclaw onboard`
3. Connect Telegram via `rsclaw configure --section channels`
4. Test A2A: spin up second instance, verify peer discovery works
5. If A2A works well — replace GitHub task queue with A2A-based task dispatch

## License Note
AGPL-3.0 — modifications must be released open source. Pure usage is fine.

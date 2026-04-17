# RD Report: Clearwing (Lazarus AI)

**URL**: https://github.com/Lazarus-AI/clearwing
**Stars**: 214 (as of Apr 17, 2026)
**Language**: Python
**License**: MIT
**Created by**: Eric Hartford (Lazarus AI) — also created Marvin chatbot series, Chatbots Podcast

---

## What It Is

Clearwing is an **autonomous vulnerability scanner and source-code hunter** built on LangGraph. It has two operational modes:

**Mode 1 — Network Pentest Agent**
- ReAct-loop agent with 63 bind-tools
- Scans live targets, detects services and vulnerabilities
- Runs sandboxed Kali Linux tools
- Attempts exploits (human-approval guardrail)
- Writes reports to a persistent knowledge graph

**Mode 2 — Source-Code Hunter**
- Parallel agent-driven pipeline: rank → hunter → verifier → exploiter → variant loop → auto-patch → report
- Uses ASan/UBSan crashes as ground truth
- Emits SARIF/markdown/JSON reports with evidence levels: `suspicion → static_corroboration → crash_reproduced → root_cause_explained → exploit_demonstrated → patch_validated`
- Can generate validated patches automatically

## Architecture

```
Network Pentest Agent          Source-Code Hunter
(clearwing.agent.graph)        (clearwing.sourcehunt.runner)
63 tools, ReAct loop           rank → pool → hunter → verify → exploit → patch → report

Shared substrate: Finding dataclass | capabilities probe | sandbox layer
knowledge graph | episodic memory | event bus | guardrails | CVSS scoring
```

## How It Works

- Requires Python 3.10+, optional Docker for Kali sandbox, Rust toolchain for the genai-pyo3 bridge
- Supports any OpenAI-compatible endpoint (OpenRouter, Ollama, LM Studio, vLLM, Together, Groq, DeepSeek, OpenAI)
- Anthropic direct also supported (`ANTHROPIC_API_KEY`)
- CI mode outputs SARIF for GitHub Code Scanning integration

## Comparison to What We Have

| Capability | Russell Tuna / Solomon OS | Clearwing |
|---|---|---|
| General reasoning/chat | ✅ (qwen3:1.7b via Ollama) | ❌ (security-focused only) |
| Network pentesting | ❌ | ✅ (63 tools, Kali sandbox) |
| Source-code auditing | ❌ | ✅ (parallel hunter agents) |
| Vulnerability exploits | ❌ | ✅ (with human-approval gate) |
| Auto-patch generation | ❌ | ✅ |
| SARIF/JSON reporting | ❌ | ✅ |

Clearwing is **orthogonal** to Russell Tuna — they don't overlap. Russell is a general cognitive worker; Clearwing is a purpose-built offensive security engine.

## What We'd Use It For

1. **AI Staffing Agency — security tier**: Offer source-code audits and network pen-tests as a premium add-on service. Businesses hire "AI staff" that includes security researchers.

2. **Bug bounty support service**: Clearwing can find CVEs in open-source projects. Could package this as a service: "we run Clearwing on your repo, deliver findings + patches."

3. **ffmpeg/ VLC-style large-repo audits**: The README specifically references running it against FFmpeg (10k source files). Companies with large OSS footprints would pay for automated audit reports.

## Risks & Notes

- **Dual-use offensive security tool** — requires strict authorization gating. Only run against targets we own or have written permission for.
- **Does NOT have GitHub stars yet** (214 is modest for a security tool) — community is small, docs still in progress (GitHub Pages not live yet)
- **Installation complexity** — Rust toolchain, Docker, uv sync, provider credentials. Not a "pip install and go" tool.
- **Large-repo cost**: FFmpeg example shows $1000 budget, 15 concurrency. This could get expensive fast.
- **Competition**: Inspired by Anthropic's Glasswing — if Glasswing goes commercial or improves, Clearwing may be overshadowed.

## Verdict

**SKILL** — Interesting for our AI staffing agency pitch. Source-code auditing + automated patch generation is a concrete, high-value deliverable that non-technical clients can understand and pay for. The tool is too specialized to be a standalone product but as a capability under Russell Tuna (or a future "Solomon Security" vertical), it adds real moat.

Could fork/adapt the source-hunt pipeline ideas into Solomon OS tooling. The LangGraph-based multi-agent architecture with evidence-level tracking is architecturally interesting for how we design Solomon Bus agents.

**Recommended next step**: Run `clearwing doctor` and `clearwing setup` in the workspace to validate it works with our Ollama setup. Then test on a small open-source repo as a proof-of-concept.

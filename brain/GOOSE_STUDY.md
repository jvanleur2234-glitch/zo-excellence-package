# goose Study — Block's AI Agent Framework

## What It Is
github.com/block/goose — 38.1k stars, by Block (Square, CashApp)
Rust + TypeScript, multi-provider AI agent with CLI + Electron desktop UI.

## What We Steal

### 1. Custom Distribution Architecture (HIGHEST VALUE)
File: CUSTOM_DISTROS.md

This is EXACTLY what we'd want for Solomon OS branded agent:
```
┌──────────────────────────────────────┐
│  Custom UI / Branding / Prewired Config │
│  (Solomon OS Agent = preconfigured goose) │
└──────────────┬───────────────────────┘
               │ REST API
               ▼
┌──────────────────────────────────────┐
│         goose-server (goosed)          │
└──────────────┬───────────────────────┘
               │
      ┌────────┼────────┐
      ▼        ▼        ▼
   Providers  Extensions  Config
   (Ollama)  (MCP)    (skills)
```

Init config for "Solomon OS Agent":
```yaml
GOOSE_PROVIDER: openrouter
GOOSE_MODEL: openai/gpt-4.1-mini
GOOSE_EXTENSIONS: [solomon-mcp-server]
```

### 2. Provider Registry Pattern
crates/goose/src/providers/
- 30+ providers: openai, anthropic, ollama, openrouter, litellm, azure, bedrock, gemini, groq,Together, Cerebras, Fireworks, DeepInfra, etc.
- Declarative provider API for adding new ones
- Each provider: ~200-500 LOC

### 3. Recipe System (Workflow Automation)
workflow_recipes/ — YAML-based task definitions
- Chainable sub-recipes
- Can call subagents
- Exactly what Solomon Bus needs

### 4. ACP (Agent Client Protocol)
crates/goose-acp/ — Open protocol for agent-to-agent communication
- Same concept as Solomon Bus
- Could wire goose ↔ Hermes via ACP

## Key Files
- CUSTOM_DISTROS.md — HOW TO BUILD CUSTOM DISTRIBUTIONS
- AGENTS.md — Development guide
- crates/goose/src/providers/ — 30+ LLM provider implementations
- workflow_recipes/ — YAML automation recipes
- crates/goose-acp/ — Agent communication protocol

## Status
CLONED at /home/workspace/goose — READ ONLY, cannot build (Rust compilation)
STUDY AND BORROW PATTERNS ONLY

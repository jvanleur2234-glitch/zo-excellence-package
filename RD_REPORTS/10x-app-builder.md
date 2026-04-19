# RD Report: 10x.app — AI-Powered iOS App Builder

**Date:** 2026-04-19
**URL:** https://www.10x.app/
**GitHub:** https://github.com/10x-app-builder/10x
**License:** PolyForm Noncommercial 1.0.0
**Stars:** 26
**MRR:** $4.2K

---

## What It Is

10x is a macOS native app (macOS 14+, Xcode 16+) that lets you describe an iOS app in natural language and generates production-quality SwiftUI code, scaffolds an Xcode project, and previews it on the iOS Simulator — all through a conversational interface.

**The agentic loop:**
1. User describes app → BuilderViewModel.sendMessage()
2. GenerationService.runGeneration() — calls Claude via thin API proxy
3. Claude returns `tool_use` blocks → parsed and executed locally by ToolExecutor
4. ToolExecutor does real filesystem I/O (write_file, edit_file, read_files, search_files, run_command)
5. XcodeGen generates `.xcodeproj` from `project.yml`
6. SimulatorPreviewService boots iPhone simulator, builds, installs, screenshots
7. Screenshot streamed back into the SwiftUI chat UI
8. Loop repeats until Claude is done (max 80 iterations)

---

## Architecture Deep Dive

### Core Services

| Service | Role |
|---|---|
| `GenerationService.swift` | Owns the Claude tool loop — streams NDJSON, parses `tool_use`, executes, repeats |
| `ToolExecutor.swift` | Real filesystem I/O for file tools + integration tools (Supabase, Superwall, backend) |
| `BuilderToolDefinitions.swift` | Tool schemas sent to Claude — matches Anthropic tool_use JSON format |
| `XcodePreviewService.swift` | Writes Swift files, creates `project.yml`, runs XcodeGen |
| `SimulatorPreviewService.swift` | Boots sim, xcodebuild, installs, launches, screenshots |
| `BuilderContextManager.swift` | Token budget management — compacts/summarizes messages when approaching limit |

### Tool Set (sent to Claude as tool definitions)

**File tools:** write_file, edit_file, read_files, delete_file, list_files, search_files, run_command
**Shared tools:** web_search, scrape_url, ask_user, set_project_identity
**Project tools:** update_project_status, update_project_dependencies, change_mode
**Skill tools:** list_skills, use_skill
**Integration tools:** supabase_read_tables, supabase_write_tables, supabase_execute_sql, supabase_manage_settings, backend_manage, superwall_manage

### Context Compaction Strategy

When approaching token limit:
1. Summarize older messages (keep recent raw)
2. Clear old tool results
3. Applied strategies tracked in logs (e.g., "summarized 5 messages, cleared 12 tool results")

### Tech Stack
- Swift 5.9 / SwiftUI (macOS app)
- Claude API via thin proxy
- XcodeGen for project scaffolding
- xcodebuild + simctl for simulator control
- Supabase for auth (token-based)

### Generated App Structure
```
~/Library/Developer/TenXApp/{project-slug}/
├── ios/{TargetName}/
│   ├── App.swift, ContentView.swift, Views/, Models/
├── project.yml (XcodeGen spec)
└── {TargetName}.xcodeproj/
```

---

## How It Compares to What We Have

| Dimension | 10x | JCPaid / Solomon OS |
|---|---|---|
| Target platform | iOS apps (macOS builder) | Full phone OS + cross-platform apps |
| Agent loop | Claude tool loop (client-side) | Hermes + Russell personas + Solomon Air |
| Code gen | SwiftUI only | Universal (any language) |
| File tools | 7 file/command tools | Hermes skills, agentic workflows |
| Monetization | $4.2K MRR, macOS app sales | Tokenomics TBD |
| License | PolyForm Noncommercial | TBD |

---

## What We'd Use It For

### FORGE — Integrate into Solomon OS

1. **Solomon App Builder** — Use the 10x agentic loop pattern to build a "describe your app" experience for Solomon OS. The same architecture (generation service → tool executor → real filesystem) but targeting cross-platform (React Native, Kotlin, Swift) instead of just iOS.

2. **Skills Marketplace** — 10x's skill system (list_skills, use_skill) is a precursor to Solomon Skills. We could implement the same tool-call interface for AI skills that run as system services on the phone.

3. **vPhone OS Builder** — The tool loop pattern is exactly what we need for vPhone OS app development. Clone the architecture, target Android/LineageOS instead of iOS.

---

## Recommendation

**Decision:** FORGE

**Rationale:** 10x proves the agentic tool-loop-for-code-generation pattern works at $4.2K MRR. The architecture is clean, the codebase is manageable (one senior dev could own it), and it directly accelerates two JCPaid workstreams: vPhone OS development and the skills marketplace.

**Priority:** Medium — not a fire, but the architecture is worth borrowing from when we build Solomon App Builder.

**Next step:** When we start vPhone OS, use 10x's GenerationService + ToolExecutor pattern as the reference implementation for the app scaffolding layer.

# RD REPORT: TrueCourse

**URL:** https://github.com/truecourse-ai/truecourse
**Stars:** ~2,400+ (est.)
**License:** MIT
**Priority:** 🟡 Worthwhile
**Date:** 2026-04-13

## What It Is
AI Architecture & Code Intelligence Platform. CLI + Web UI that analyzes codebases for architecture violations (circular deps, layer violations, god modules, dead modules), semantic issues (error handling, race conditions, security anti-patterns), and provides ER diagrams, cross-service flow tracing, and diff mode. Works with Claude Code (no API key) or own API keys. Runs fully local.

## Key Components
- **Architecture Analysis:** Circular deps, layer violations, god modules, dead modules, tight coupling
- **Code Intelligence:** LLM-powered semantic review — error handling, race conditions, misleading names, dead code, security anti-patterns, resource leaks
- **Cross-Service Flow Tracing:** Auto-detect request flows across HTTP/service boundaries, visualize as end-to-end traces
- **Database Analysis:** Auto-detect ORM (Prisma, Drizzle, SQLAlchemy, TypeORM, Knex), generate ER diagrams, check for missing FKs/indexes
- **Diff Mode:** Track new vs resolved violations across git commits
- **Claude Code Skills:** `/truecourse-analyze`, `/truecourse-list`, `/truecourse-fix` skills for in-CLI integration
- **Analytics Dashboard:** Violation trends over time, severity breakdowns, code hotspots

## Language Support
JavaScript/TypeScript ✅ | Python ✅ | C#/Go/Rust/PHP/Go planned

## What We'd Use It For
1. **Solomon OS code quality** — Analyze our own codebase (Russell Tuna bot, Solomon Bus, Hermes, MoneyPrinterTurbo scripts) for architecture violations
2. **Client project audits** — Offer architecture review as a service in the AI Staffing Agency
3. **Zo Computer integration** — TrueCourse could run on the Zo server to give the agent self-diagnostic capabilities
4. **CI pipeline** — Add to Solomon Bus as a pre-commit hook to catch violations before they land

## Comparison to What We Have
| Aspect | TrueCourse | Traditional linters |
|---|---|---|
| Scope | Architecture + semantic | Syntax only |
| LLM-powered | Yes (deeper analysis) | No |
| Self-hosted | Yes (fully local) | Yes |
| Claude Code native | Yes | No |
| Diff mode | Yes | No |

## Recommendation
**SKILL** — Worth installing in the workspace and running against Solomon OS code. The architecture + semantic analysis fills a gap traditional linters miss. Could be a差异化 offering in the staffing agency (architecture review service). Install with `npx truecourse analyze`.

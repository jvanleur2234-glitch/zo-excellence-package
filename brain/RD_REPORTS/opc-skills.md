# RD Report: ReScienceLab/opc-skills

**Repo:** https://github.com/ReScienceLab/opc-skills  
**Stars:** ~500  
**License:** MIT  
**Last updated:** Recent (active)

---

## What It Is

A collection of 10 AI agent skills for solopreneurs/indie hackers. Published on skills.sh marketplace, compatible with 16+ AI coding tools (Claude Code, Cursor, Windsurf, Codex, etc.). Install via `npx skills add ReScienceLab/opc-skills`.

---

## Skills Inventory

| Skill | Purpose |
|-------|---------|
| `seo-geo` | SEO & GEO optimization for AI search engines (ChatGPT, Perplexity, Google) |
| `requesthunt` | Research user demand from Reddit, X, and GitHub |
| `domain-hunter` | Find domains, compare registrar prices, discover promo codes |
| `logo-creator` | Create logos with AI, crop, remove background, export as SVG |
| `banner-creator` | Create banners for GitHub, Twitter, LinkedIn |
| `nanobanana` | Generate images using Gemini 3 Pro Image |
| `reddit` | Search Reddit via public JSON API |
| `twitter` | Search Twitter/X via twitterapi.io |
| `producthunt` | Search Product Hunt posts, topics, users, collections |
| `archive` | Archive session learnings with indexed markdown |

---

## What We'd Use It For

1. **`seo-geo`** — Directly applicable to the AI Tools Affiliate Site (Real Estate, 5/10 articles done). This skill specifically targets AI search engines (Perplexity, ChatGPT search) which is exactly the emerging traffic source for that site. High-value.

2. **`requesthunt`** — Validates business ideas before building. Fits Solomon OS's research-before-action philosophy. Could replace the manual Reddit/X/GitHub scraping currently done in idea validation loops.

3. **`domain-hunter`** — Nice-to-have for quickly checking domain availability when scoping new projects. Less critical since we already have namechk workflows.

4. **`banner-creator`** / `logo-creator` — Could enhance Zo's existing banner-design skill, but Zo already has strong image gen capabilities. Lower priority.

---

## Comparison to What We Have

- **SEO:** Zo has no dedicated SEO skill. `seo-geo` adds specific GEO (Generative Engine Optimization) knowledge that we don't currently have. This is net-new and valuable.
- **Request/hunting:** We do this manually or via web search. `requesthunt` bundles it into a skill — more structured, faster.
- **Social search:** We have `x_search`, `reddit` via web search. These skills use official APIs (Reddit JSON, twitterapi.io) which could be more reliable than scraping.
- **Archive:** Zo's workspace files already serve this purpose. Low priority.

---

## Risks / Caveats

- Some skills require API keys (twitterapi.io, DataForSEO for seo-geo) — additional credential management
- `nanobanana` uses Gemini 3 Pro Image which may not be in our current stack
- Domain-hunter depends on `twitter` and `reddit` skills — cascading installs

---

## Verdict

**INTEGRATE — `seo-geo` first, `requesthunt` second.**

Priority order:
1. **`seo-geo`** — immediate use case for the real estate affiliate site already in progress. Targets Perplexity/ChatGPT search which is emerging traffic.
2. **`requesthunt`** — drops into the idea-validation workflow for new business lines.
3. Others — install as needed.

**Action:** Clone relevant skills into `/home/workspace/Skills/` and install dependencies (`npx skills add` won't work in our environment, but we can manually copy the SKILL.md + scripts).

---
*RD Report — opc-skills — 2026-04-10*

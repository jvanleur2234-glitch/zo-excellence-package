# R&D Department — Solomon OS

**Department:** Research & Development
**Head:** Zo (COO Agent)
**Mission:** Continuously upgrade Solomon OS capabilities by finding, analyzing, and integrating new tools, repos, and ideas.

## What I Do (R&D Agent)

When Joseph sends `queue: [GitHub URL / YouTube URL / Article URL]` or `/rnd [URL]`:

1. **Fetch** — Clone repos, scrape videos/articles, extract transcripts
2. **Analyze** — What does it do? How does it work? What's the tech stack?
3. **Compare** — How does it compare to what we already have?
4. **Score** — fit for Solomon OS, fit for JackConnect, uniqueness, build difficulty
5. **Recommend** — Should we fork it, build it into JackConnect, add it as a skill, or skip it?
6. **Store** — Write findings to solomon-vault/brain/RD_REPORTS/
7. **Sync** — Push to GitHub so other Zos have it

## RD_REPORTS Format

Every research item gets a file like: `solomon-vault/brain/RD_REPORTS/[slug].md`

```markdown
# [Repo Name] — Research Report
**URL:** https://...
**Date added:** YYYY-MM-DD
**Source:** Joseph (queue)
**Stars:** N | **License:** MIT/BSL/etc
**Tech stack:** Python / TypeScript / etc

## What It Does
2-3 sentences.

## How It Works
Key technical details.

## Comparison to Our Stack
| Feature | This repo | Our equivalent |
|---------|-----------|----------------|
| ... | ... | ... |

## Scores (1-5)
- **Solomon OS fit:** ★★★☆☆
- **JackConnect fit:** ★★★★☆
- **Uniqueness:** ★★★☆☆
- **Build difficulty:** Low/Medium/Hard
- **License risk:** Low/Medium/High

## Recommendation
FORGE / SKILL / INTEGRATE / SKIP

## What We'd Use It For
Specific use case.
```

## Always Check First
Before analyzing any repo, always check if we already processed it:
```
grep -l "repo-name" solomon-vault/brain/RD_REPORTS/
```

## Priority Scoring
| Priority | Criteria |
|----------|----------|
| 🔴 Critical | New AI paradigm, competitor, or 10K+ stars + clean license |
| 🟡 Worthwhile | 1K-10K stars, clear use case, easy to integrate |
| 🟢 Nice to have | Interesting but no immediate fit |

## When to Escalate to Joseph
- Critical priority finds
- License concerns
- Build requires significant time/money
- Could change our strategy

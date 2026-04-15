# RD REPORT: Show Me The Money
**Source:** https://github.com/iamzifei/show-me-the-money
**Date:** 2026-04-14
**Priority:** 🔴 CRITICAL — fills our biggest gaps
**License:** CC BY-NC 4.0 (free for personal/internal use)

---

## WHAT IT IS

14 AI agent skills that run a business autonomously — idea validation → strategy → build → marketing → ops → revenue. Built for Claude Code but uses standard SKILL.md format compatible with Hermes.

## WHAT WE HAVE vs. WHAT IT ADDS

| Solomon OS Has | What Show Me The Money Adds |
|---|---|
| ✅ Russell Tuna (AI worker) | **Discover** — market scanning, demand validation |
| ✅ Solomon Bus (task queue) | **Strategy** — SWOT, 4P, GTM plan |
| ✅ MoneyPrinterTurbo (video) | **Product** — landing page, auth, payments, SEO |
| ✅ Hermes (skills registry) | **Content** — blog posts, email sequences, video scripts |
| ❌ No email outreach | **Outreach** — cold email sequences, personalization |
| ❌ No social automation | **Social** — X, LinkedIn, Reddit, Product Hunt |
| ❌ No SEO | **SEO + GEO** — traditional + AI search optimization |
| ❌ No ads | **Ads** — Google Ads, Meta Ads, ROAS tracking |
| ✅ Basic ops | **Ops** — 24/7 health scoring, canary monitoring |
| ❌ No finance tracking | **Finance** — revenue, unit economics |
| ❌ No diagnosis | **Diagnose** — business diagnosis when stuck |

## HOW IT WORKS (TECHNICALLY)

Each skill is a `SKILL.md` file with:
- Step-by-step workflows
- Decision trees
- Business frameworks (premise deconstruction, 5-filter scoring, SWOT, 4P, etc.)
- Every phase ends with "Tomorrow's first action: [specific task]"

Format is 100% compatible with Hermes skill system. Can be cloned directly to `/home/workspace/Skills/`.

## COMPETITIVE CONTEXT

- **AutoGTM** launched April 13 at $199/mo — same vision, closed platform
- **Show Me The Money** — free, open, runs on your own AI
- We sit between them: free + open + Telegram-native + 24/7

## RECOMMENDATION

**FORGE** — Clone all 14 skills into Hermes immediately.

This fills every major gap we have:
- `/money-outreach` → Russell Tuna can do cold email
- `/money-social` → automated social posting
- `/money-seo` → content ranking engine
- `/money-ops` → business health monitoring
- `/money-finance` → revenue tracking

## WHAT TO DO

```bash
# Clone to Hermes skills
cd /home/workspace/Skills
git clone https://github.com/iamzifei/show-me-the-money show-me-the-money
cd show-me-the-money

# Copy each skill to Hermes format
cp -r skills/money-discover /home/workspace/Skills/
cp -r skills/money-strategy /home/workspace/Skills/
cp -r skills/money-diagnose /home/workspace/Skills/
cp -r skills/money-product /home/workspace/Skills/
cp -r skills/money-quality /home/workspace/Skills/
cp -r skills/money-content /home/workspace/Skills/
cp -r skills/money-outreach /home/workspace/Skills/
cp -r skills/money-social /home/workspace/Skills/
cp -r skills/money-seo /home/workspace/Skills/
cp -r skills/money-ads /home/workspace/Skills/
cp -r skills/money-ops /home/workspace/Skills/
cp -r skills/money-finance /home/workspace/Skills/
```

Then wire Russell Tuna to `/money` router for onboarding and `/money-outreach` for client acquisition.

---

**Bottom line:** This is the business logic layer we've been missing. Russell Tuna is the AI worker — Show Me The Money is the MBA brain that tells him what to do. Together they become a complete autonomous business.

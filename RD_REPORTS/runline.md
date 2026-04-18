# RD Report: Runline

**Date:** April 17, 2026
**Status:** INTEGRATE

## What It Is
Runline = JavaScript sandbox for agents with 188 pre-built API plugins.

## How It Works
- Agent writes JS in QuickJS WASM sandbox (no network/fs access)
- Plugins execute outside sandbox with full Node.js access
- `runline exec 'return await pipedrive.deal.search({ term: "Acme" })'`
- 188 bundled plugins: GitHub, Notion, HubSpot, Stripe, Salesforce, Linear, ClickUp, Airtable, Slack, and 179 more

## vs Solomon OS
- We write custom Python per integration, Runline has 188 ready
- Our subprocess timeout logic = Runline's QuickJS sandbox built-in
- Same concept as OpenFang's action layer, but different implementation

## Three Immediate Uses
1. Add `runline` to Russell Tuna Bot — `/runline` command for any of 188 API actions ✅ DONE
2. Study plugin registry pattern for Hermes capability registration
3. The QuickJS sandbox is the right isolation model — safer than our current Python exec

## Installation
`npm install -g runline` ✅ Done

## Integration: Russell Tuna Bot
Added `/runline` command to `russell_bot.py`:
```
/runline return await github.repo.list({ owner: "torvalds" })
/runline return await stripe.customer.list()
/runline return await notion.databases.list()
/runline return await airtable.base.list()
/runline return await slack.users.list()
/runline return await hubspot.crm.contact.list()
/runline return await shopify.order.list()
```

## Key Plugins for Solomon OS
- **github** — repo management, issues, PRs
- **stripe** — payments, customers, subscriptions
- **hubspot** — CRM, contacts, deals
- **salesforce** — enterprise CRM
- **airtable** — Joseph's data
- **notion** — knowledge base
- **linear** — project management
- **slack** — team communication
- **sendgrid** — transactional email
- **twilio** — SMS/voice
- **shopify** — e-commerce

## RECOMMENDATION: INTEGRATE
Not a replacement for our custom Python integrations — it's an addition.
Use it to give Russell Tuna instant API superpowers without writing new code.

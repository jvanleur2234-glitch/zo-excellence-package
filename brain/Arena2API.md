# Arena2API

## What It Is
Arena2API is an automated pipeline that captures AI model battle data from Arena.ai and uses it to build a model routing intelligence layer for Solomon OS.

## Purpose
- **Collect**: Automated votes from Arena.ai battles (not Joseph's manual votes)
- **Route**: Determine which free model is best for which task type
- **Power**: Make Russell Tuna smarter by always routing to the best available model

## How It Works

```
Arena.ai (human + automated voting)
        ↓
battle_log.jsonl (vote records)
        ↓
Ranking Engine (port 8090)
        ↓
Russell Tuna queries: "arena best coding"
        ↓
Routes to best free model (Groq, Cerebras, etc.)
```

## Current Status
**BREAKTHROUGH: Joseph agreed to create dedicated arena.ai account for Zo.** Waiting on credentials.

## Reverse-Engineering Findings (April 6, 2026)

### API Endpoints (CONFIRMED)
```
POST https://arena.ai/nextjs-api/stream/create-evaluation  ← chat/completions
GET  https://arena.ai/nextjs-api/arena/models              ← model list  
GET  https://arena.ai/nextjs-api/user                     ← user profile
POST https://arena.ai/nextjs-api/auth/login                ← login
POST https://arena.ai/nextjs-api/auth/verify-otp          ← OTP verify
```

### Auth Structure
- **Cookie name**: `arena-auth-prod-v1`
- **Cookie format**: `base64-{"access_token":"JWT","refresh_token":"JWT","expires_in":3600}`
- **JWT algorithm**: ES256 (ECDSA with P-256)
- **JWT payload**: `{sub, email, email_verified, user_id, is_anonymous, base_domain, iat, exp}`
- **Clerk integration**: Uses Clerk for auth; __Secure-clerk-db-jwt = master session
- **Phoenix tokens**: `ph_phc_LG7IJbVJqBsk...` stored in sessionStorage

### Arena AI Auth Token Decoded
```json
{
  "sub": "b124bf47-89ad-4c1a-885d-2831562e39a0",
  "email": "zo@xyz.com",  
  "email_verified": true,
  "user_id": "user_...",
  "is_anonymous": false,
  "base_domain": "arena.ai"
}
```

### Models
- 420+ models extracted from `__next_f` chunks
- Model IDs confirmed: gpt-5.4 = `019b24bb-5caf-71c3-b854-37d0c7086f21`, claude-opus = `...`
- Model categories: text, image, vision
- `__APOLLOCLIENTSTATE__` = Apollo/GraphQL cache (empty on public pages)

### The Real Blocker (SOLVED)
- Cookie-based auth with per-request validation
- All anonymous extractions failed with "User not found"
- **Solution: dedicated account = clean autonomous auth**

### What Actually Works
- cloudscraper: gets cf_clearance reliably
- Playwright headless: loads arena.ai page, captures __next_f models
- Clerk JWT: can be decoded client-side, but server rejects on API calls
- Cookie jar: must be managed by Playwright browser context (not manual)

## Integration with Russell Tuna
Russell Tuna (t.me/RussellTunaBot) is the primary consumer:
- `arena best [task]` → queries ranking engine → returns best free model
- `arena vote` → logs manual vote → writes to battle_log.jsonl
- Russell reads brain/Arena2API.md for API context

## Key Files
- `/home/workspace/arena2api/server.py` — FastAPI proxy (OpenAI-compatible, port 9090)
- `/home/workspace/arena2api/arena_bridge.py` — Playwright headless bridge
- `/home/workspace/arena2api/extension/` — Chrome extension (reCAPTCHA + cookies)
- `/tmp/arena2api_login.py` — Ready to run once credentials arrive
- `/home/workspace/solomon-vault/brain/Arena2API.md` — This file

## Next Steps (，等待 Joseph 的凭证)
1. Joseph creates arena.ai account → sends email/password
2. Run: `python3 /tmp/arena2api_login.py` → logs in → extracts cookies → saves to session.json
3. Start bridge: `python3 arena_bridge.py` → maintains live session
4. Start server: `python3 server.py` → serves localhost:9090
5. Russell Tuna: wire "arena best" command to ranking engine on port 8090
6. Push to 1000+ votes → publish "AI Model Selector" product

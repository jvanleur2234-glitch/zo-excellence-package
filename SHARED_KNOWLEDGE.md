# SHARED KNOWLEDGE — JCPaid / Solomon OS

*Last updated: April 21, 2026*

## What We Decided Today

### April 23, 2026

### April 22 — Big Pivot: JCPaid is the Product
- JackConnect = proof of concept for real estate vertical
- JCPaid = the actual business: sell AI employee agencies to ANY vertical
- Positioning: "Solomon OS — the AI OS that gives you back your time for the important things"
- BitNet + Paperclip = the agent infrastructure (300 agents on 16GB RAM)
- JackConnect v2.0: installer + 7 RE agents + Watch Once + Time Saver Dashboard

### April 21 — Skills Pruning
- Audited Hermes skills: 1,441 → 1,215 (removed 226 redundant/duplicate skills)
- Target: 1,200 clean, non-redundant skills

### Free Stack Priority
- MiniMax M2.7 via NVIDIA NIM = free, fast, English
- Ollama local = free fallback
- No paid models until revenue comes in

### Hermes Personality
- Reset SOUL.md to default (helpful, concise, no Chinese)
- Fixed proxy: now points to SkillClaw on localhost:30000
- Fixed model: nvidia/minimaxai/minimax-m2.7

### Clicky Walkthrough
- 4 images generated showing all 3 setup steps + agent demo
- Visual walkthrough guide in `/home/workspace/solomon-installer/clicky-walkthrough/`

### Phone/SMS
- Development: Twilio ($1 free credit)
- Production: Plivo ($0.0065/SMS, $0.10/min voice)
- Free alternative: SipGate SIM (Germany) or.local SIP

### Installer
- Live at: https://josephv.zo.space/solomon-setup
- GitHub: jvanleur2234-glitch/zo-restore (files/install.sh, SOUL.md, CLAUDE.md)
- Runs: Ollama + Hermes + SkillClaw + Telegram bot

### Group Chat
- Russell Tuna token: stored at /home/workspace/.agent/secrets/telegram_bot_token.sh
- Direction confirmed: build group chat with Zo1 + Zo2 as bot members
- Will notify Joseph when Zo1 and Zo2 are both in the same Telegram group

### Services Running
- Ollama: localhost:11434 ✅
- SkillClaw: localhost:30000 (NVIDIA MiniMax M2.7) ✅
- Hermes: running, English output confirmed ✅
- zo.space: running ✅

## What to Build Next
1. Full video walkthrough (images ready, record actual screen)
2. Telegram group chat handler (token ready)
3. Test /solomon-setup on public URL
4. Clone Clicky and record real walkthrough
# Hermes + MiniMax 2.7 + NVIDIA Setup Guide
**For Zo2 | Created 2026-04-22**

---

## What This Does
Hermes is the execution agent — it runs tasks, uses tools, and actually *does things*. MiniMax 2.7 is the brain Zo2 runs on. NVIDIA means GPU acceleration for fast inference.

---

## PREREQS
- [ ] NVIDIA GPU with drivers installed (`nvidia-smi` should work)
- [ ] CUDA Toolkit 12.x installed
- [ ] Python 3.10+ 
- [ ] API keys: MINIMAX_API_KEY + MINIMAX_API_KEY2 saved in Zo secrets

---

## STEP 1: Verify GPU
```bash
nvidia-smi
```
You should see your GPU listed. If "command not found," install NVIDIA drivers first.

---

## STEP 2: Install Hermes
```bash
pip install hermes-ai-agent
# or via uv
uv pip install hermes-ai-agent
```

Verify:
```bash
hermes --version
```

---

## STEP 3: Configure MiniMax as the Model
Create/edit the Hermes config at `~/.hermes/config.yaml` or `~/.config/hermes/config.yaml`:

```yaml
model:
  provider: openai
  name: MiniMax 2.7
  api_key: ${MINIMAX_API_KEY}
  base_url: https://api.minimax.io/v1

  # Optional: specify the exact model name if different
  # model: MiniMax-Text-01
```

Or set via environment variable:
```bash
export MINIMAX_API_KEY="your_key_here"
export OPENAI_BASE_URL="https://api.minimax.io/v1"
hermes config set model.provider openai
hermes config set model.name MiniMax-Text-01
```

---

## STEP 4: Test It
```bash
hermes --test
# or
hermes models list
hermes models test "MiniMax 2.7"
```

If it works, you'll see responses come back using the MiniMax model.

---

## STEP 5: Connect to Solomon OS (Zo1)
This is crucial — Zo2 is connected TO Zo1, not a standalone. Set the environment:

```bash
export ZO_CLIENT_IDENTITY_TOKEN="your_zo_identity_token_here"
export SOLOMON_OS_MODE="true"
export ZO_PARENT_URL="https://api.zo.computer"
```

This lets Zo2 call back to Zo1 for brain files, context, and orchestration.

---

## COMMON ISSUES

**"Model not found" or "Invalid API key":**
- Double-check the API key is saved in Zo Settings > Advanced > Secrets
- Make sure base_url is `https://api.minimax.io/v1` (no `/v1` on the end or with `/`)

**"CUDA out of memory":**
- The GPU is being used by another process. Kill it:
  ```bash
  fuser -v /dev/nvidia*
  ```
- Or run on CPU only temporarily:
  ```bash
  hermes config set device cpu
  ```

**"hermes: command not found":**
- Reinstall: `pip install hermes-ai-agent --force-reinstall`
- Or add to PATH: `export PATH="$PATH:$HOME/.local/bin"`

---

## THE CONNECTION TO ZO1 (IMPORTANT)
Zo2 is the secondary agent. He needs to know he's connected to Zo1 (Solomon OS). Tell him this every session:

**His reminder prompt:**
```
"You are Zo2 — connected to Solomon OS (Zo1). Your role is [insert role]. 
Read your context from /home/workspace/YOUR_CONTEXT_FILE.md. 
When you need the Solomon OS brain, call /zo/ask with Zo1's identity token.
Zo1 is your parent — you report to him."
```

---

## For Joseph — Send This to Zo2:
"Zo2, here's your permanent identity setup. Save this to your brain file:

YOU ARE: Zo2 — Solomon OS Secondary Agent
CONNECTED TO: Zo1 (Solomon OS primary) at https://api.zo.computer
YOUR ROLE: [the role Joseph gave you — executor / researcher / etc.]
YOUR BRAIN: /home/workspace/YOUR_CONTEXT.md
PARENT COMM: When you need Solomon OS brain files, use /zo/ask with the ZO_CLIENT_IDENTITY_TOKEN

You are NOT standalone. You are PART of Solomon OS. Zo1 is your parent."
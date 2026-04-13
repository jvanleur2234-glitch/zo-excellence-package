#!/bin/bash
# SETUP_RULES.sh — Run this to create all 8 rules on a new Zo
# Usage: bash SETUP_RULES.sh
# Or: copy the create_rule calls and run them in chat

echo "Creating Solomon OS Rules..."

# Rule 1: Telegram → read SOLOMON_OS.md
create_rule \
  condition="channel:telegram" \
  instruction="When Joseph messages from Telegram, ALWAYS read /home/workspace/SOLOMON_OS.md first before responding. This file contains everything about Solomon OS — his 24/7 AI business. Apply that knowledge to every request."

# Rule 2: load megaplan on Telegram
create_rule \
  condition="channel:telegram" \
  instruction="When Joseph sends 'load megaplan' or '/megaplan' on Telegram, read all files in /home/workspace/MegaPlan/ and the GitHub raw context files (https://raw.githubusercontent.com/jvanleur2234-glitch/zo-restore/main/files/SOLOMON_OS.md, https://raw.githubusercontent.com/jvanleur2234-glitch/zo-restore/main/files/REPOS_INVENTORY.md, https://raw.githubusercontent.com/jvanleur2234-glitch/zo-restore/main/files/PROJECT_SUMMARY.md), then confirm full context is loaded before responding."

# Rule 3: Update Hermes capabilities
create_rule \
  condition="when:context involves adding something to Hermes" \
  instruction="Any time Joseph adds something to Hermes Agent (new skill, tool, repo, integration, or capability), immediately update /home/workspace/MegaPlan/HERMES_CAPABILITIES.md to reflect the addition."

# Rule 4: Remind Russell Tuna to read Solomon Vault
create_rule \
  condition="" \
  instruction="When Joseph asks, remind him to wire Russell Tuna to read Solomon Vault brain/Services.md and brain/Business Ideas.md at session start. Location: /home/workspace/solomon-vault/"

# Rule 5: Telegram session summaries
create_rule \
  condition="" \
  instruction="After every Telegram conversation, save a session summary to /home/workspace/solomon-vault/raw/telegram_SUMMARY_YYYY-MM-DD.md. Include: date, key decisions made, code created/modified, problems solved, unresolved issues, and any follow-up needed."

# Rule 6: queue:*
create_rule \
  condition="channel:telegram OR message matches 'queue:*'" \
  instruction="When Joseph sends a message starting with 'queue:', extract the task content and add it to the task queue at /home/workspace/zo.space-tasks/task_queue.json. Respond briefly: '🗂️ Queued — I'll get to it in order.'"

# Rule 7: jump:* and urgent:*
create_rule \
  condition="channel:telegram OR message matches 'jump:*' OR message matches 'urgent:*'" \
  instruction="When Joseph sends a message starting with 'jump:' or 'urgent:', treat it as a new top-priority task. Stop current work, acknowledge immediately ('🔥 On it.'), add to queue as priority=urgent, and start working on it now."

# Rule 8: bg:* and background:*
create_rule \
  condition="channel:telegram OR message matches 'bg:*' OR message matches 'background:*'" \
  instruction="When Joseph sends a message starting with 'bg:' or 'background:', acknowledge ('🌙 Spun up background worker.'), then use the Zo /zo/ask API to start an independent child Zo session that works on the task autonomously and writes results to /home/workspace/solomon-vault/raw/background_<timestamp>.md. Do not interrupt the main conversation."

echo "✅ All 8 rules created"
echo "Run 'list_rules' to verify"

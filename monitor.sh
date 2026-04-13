#!/bin/bash
# monitor.sh — Lightweight service health monitor
# Run every 60 seconds via cron or loop
# Writes to /home/workspace/.agent/status/services.json

STATUS_FILE="/home/workspace/.agent/status/services.json"
LOG_FILE="/home/workspace/.agent/status/health.log"

check_service() {
    local name="$1"
    local host_port="$2"
    local timeout=3
    
    if timeout "$timeout" bash -c "echo > /dev/tcp/$host_port" 2>/dev/null; then
        echo "up"
    else
        echo "down"
    fi
}

check_http() {
    local name="$1"
    local url="$2"
    local code=$(curl -s -o /dev/null -w "%{http_code}" --max-time 5 "$url" 2>/dev/null)
    if [ "$code" = "200" ] || [ "$code" = "401" ]; then
        echo "up"
    else
        echo "down"
    fi
}

# Check services
moneyprinter=$(check_service "MoneyPrinterTurbo" "localhost:8080")
ollama=$(check_service "Ollama" "localhost:11434")
zo_space=$(check_http "ZoSpace" "https://josephv.zo.space")
paperclip=$(check_service "Paperclip" "localhost:3101")
hermes=$(check_service "Hermes" "localhost:8000")

# Count uptime
up_count=0
total_count=5
[ "$moneyprinter" = "up" ] && ((up_count++)) || true
[ "$ollama" = "up" ] && ((up_count++)) || true
[ "$zo_space" = "up" ] && ((up_count++)) || true
[ "$paperclip" = "up" ] && ((up_count++)) || true
[ "$hermes" = "up" ] && ((up_count++)) || true

# Write status
python3 -c "
import json
from datetime import datetime, timezone

data = {
    'timestamp': datetime.now(timezone.utc).isoformat(),
    'services': {
        'MoneyPrinterTurbo:8080': '$moneyprinter',
        'Ollama:11434': '$ollama',
        'ZoSpace': '$zo_space',
        'Paperclip:3101': '$paperclip',
        'Hermes:8000': '$hermes'
    },
    'uptime_count': $up_count,
    'total': $total_count,
    'all_up': $up_count == $total_count
}
with open('$STATUS_FILE', 'w') as f:
    json.dump(data, f, indent=2)
"

# Log health events (only when something changes)
echo "[$(date '+%Y-%m-%d %H:%M:%S')] MP:$moneyprinter OLL:$ollama ZO:$zo_space PC:$paperclip HRM:$hermes" >> "$LOG_FILE"

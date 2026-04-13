#!/bin/bash
echo "=== Job Runner Status ==="
cat /home/workspace/.agent/status/jobs.json 2>/dev/null | python3 -m json.tool 2>/dev/null || echo "No status file"
echo ""
echo "=== Pending ==="
ls /home/workspace/.agent/jobs/pending/ 2>/dev/null || echo "none"
echo "=== Running ==="
ls /home/workspace/.agent/jobs/running/ 2>/dev/null || echo "none"
echo "=== Completed ==="
ls /home/workspace/.agent/jobs/completed/ 2>/dev/null | tail -5
echo "=== Failed ==="
ls /home/workspace/.agent/jobs/failed/ 2>/dev/null | tail -5

#!/bin/bash
# submit.sh — Submit a job to the persistent runner
# Usage: ./submit.sh "echo hello" [timeout_seconds]
# Example: ./submit.sh "pip install numpy && python build.py" 600

COMMAND="$1"
TIMEOUT="${2:-3600}"
JOBS_DIR="/home/workspace/.agent/jobs"
PENDING="$JOBS_DIR/pending"

[ -z "$COMMAND" ] && echo "Usage: submit.sh <command> [timeout]" && exit 1

JOB_ID="job_$(date +%s)_$$"

cat > "$PENDING/${JOB_ID}.json" << JOB
{"id":"$JOB_ID","command":"$COMMAND","timeout":$TIMEOUT,"submitted":"$(date -Iseconds)"}
JOB

echo "✅ Job submitted: $JOB_ID"
echo "   Command: $COMMAND"
echo "   Check status: cat /home/workspace/.agent/status/jobs.json"
echo "   Check output: cat /home/workspace/.agent/jobs/logs/${JOB_ID}.stdout"
echo "   Watch logs: tail -f /home/workspace/.agent/jobs/runner.log"

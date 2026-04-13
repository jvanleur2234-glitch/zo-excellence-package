#!/bin/bash
# job-runner.sh — Persistent background job daemon for Zo
# Survives conversation resets. Zo writes jobs, this runs them.
# Usage: Run once, stays alive. Use submit.sh to add jobs.

JOBS_DIR="/home/workspace/.agent/jobs"
STATUS_FILE="/home/workspace/.agent/status/jobs.json"
LOG_DIR="$JOBS_DIR/logs"
PID_FILE="$JOBS_DIR/runner.pid"

mkdir -p "$LOG_DIR" "$JOBS_DIR/pending" "$JOBS_DIR/running" "$JOBS_DIR/completed" "$JOBS_DIR/failed"

log() { echo "[$(date '+%Y-%m-%d %H:%M:%S')] $$ $1" >> "$JOBS_DIR/runner.log"; }

# Already running?
if [ -f "$PID_FILE" ] && kill -0 "$(cat "$PID_FILE")" 2>/dev/null; then
    log "Already running as PID $(cat "$PID_FILE")"
    exit 0
fi

echo $$ > "$PID_FILE"
log "Job runner started — watching $JOBS_DIR"

# Init status
echo '{"running":[],"completed":[],"failed":[]}' > "$STATUS_FILE"

while true; do
    # Get next pending job
    shopt -s nullglob
    jobfiles=( "$JOBS_DIR"/pending/*.json )
    shopt -u nullglob
    
    for jobfile in "${jobfiles[@]}"; do
        JOB_ID=$(basename "$jobfile" .json)
        log "Picking up job: $JOB_ID"
        
        # Move to running
        mv "$jobfile" "$JOBS_DIR/running/${JOB_ID}.json"
        jobfile="$JOBS_DIR/running/${JOB_ID}.json"
        
        COMMAND=$(python3 -c "import json; d=json.load(open('$jobfile')); print(d.get('command',''))")
        TIMEOUT=$(python3 -c "import json; d=json.load(open('$jobfile')); print(d.get('timeout',3600))")
        
        # Mark running in status
        python3 -c "
import json
d=json.load(open('$STATUS_FILE'))
d['running'].append('$JOB_ID')
json.dump(d, open('$STATUS_FILE','w'))
"
        
        STDOUT="$LOG_DIR/${JOB_ID}.stdout"
        STDERR="$LOG_DIR/${JOB_ID}.stderr"
        
        START=$(date +%s)
        timeout "$TIMEOUT" bash -c "$COMMAND" > "$STDOUT" 2> "$STDERR"
        RESULT=$?
        END=$(date +%s)
        DURATION=$((END - START))
        
        # Move to completed or failed
        if [ $RESULT -eq 0 ] || [ $RESULT -eq 124 ]; then
            [ $RESULT -eq 124 ] && log "Job $JOB_ID timed out after ${DURATION}s" || log "Job $JOB_ID completed in ${DURATION}s"
            mv "$jobfile" "$JOBS_DIR/completed/${JOB_ID}.json"
        else
            log "Job $JOB_ID FAILED (exit $RESULT) after ${DURATION}s"
            mv "$jobfile" "$JOBS_DIR/failed/${JOB_ID}.json"
        fi
        
        # Update status
        python3 -c "
import json
d=json.load(open('$STATUS_FILE'))
d['running'] = [x for x in d['running'] if x != '$JOB_ID']
entry = {'id':'$JOB_ID','exit':$RESULT,'duration':$DURATION}
if $RESULT == 0 or $RESULT == 124:
    d['completed'].append(entry)
else:
    d['failed'].append(entry)
json.dump(d, open('$STATUS_FILE','w'))
"
    done
    
    sleep 3
done

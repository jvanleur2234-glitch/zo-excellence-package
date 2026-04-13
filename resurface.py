#!/usr/bin/env python3
"""Resurface memories from Zo Foam using keyword search."""
import sys, json, os
from datetime import datetime, timedelta

def resurface(query: str, days_back: int = 90, limit: int = 10, projects: list = None):
    cutoff = datetime.now() - timedelta(days=days_back)
    results = []
    query_words = set(query.lower().split())
    for fname in sorted(os.listdir("/home/workspace/zo-foam/dumps")):
        if not fname.endswith(".jsonl"): continue
        fdate = datetime.strptime(fname.replace(".jsonl",""), "%Y-%m-%d")
        if fdate < cutoff: continue
        with open(f"/home/workspace/zo-foam/dumps/{fname}") as f:
            for line in f:
                try: entry = json.loads(line)
                except: continue
                if projects and not any(p in entry.get("projects",[]) for p in projects): continue
                text_lower = (entry.get("text","") + " ".join(entry.get("tags",[])) + entry.get("summary","")).lower()
                score = sum(1 for w in query_words if w in text_lower)
                if score > 0: results.append((score, entry))
    results.sort(key=lambda x: x[0], reverse=True)
    return [r for _, r in results[:limit]]

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("query", help="Search query")
    parser.add_argument("--days", type=int, default=90)
    parser.add_argument("--limit", type=int, default=10)
    parser.add_argument("--projects", default="")
    args = parser.parse_args()
    results = resurface(args.query, args.days, args.limit, [p.strip() for p in args.projects.split(",") if p.strip()] or None)
    if not results: print("No memories found.")
    for r in results:
        print(f"[{r['timestamp'][:10]}] {r['summary']}")
        print(f"  Tags: {', '.join(r['tags'])} | Projects: {', '.join(r['projects'])}")
        print()

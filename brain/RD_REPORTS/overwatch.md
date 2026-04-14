# RD REPORT: Overwatch

**URL:** https://github.com/dwani-ai/overwatch
**Stars:** ~1,200+ (est.)
**License:** MIT
**Priority:** 🟡 Worthwhile
**Date:** 2026-04-13

## What It Is
Agentic Video Analytics Platform. Autonomous AI agents analyze video footage using Google Gemma 4 E4B-it (multimodal) for security issues, logistics tracking, attendance counts, compliance, loss prevention, and perimeter events. FastAPI + React + Docker. Remote vLLM backend.

## Key Components
- **Overwatch API**: FastAPI server on port 8080 with job management, video upload, event polling
- **11 Industry Pipelines**: retail_qsr, logistics_warehouse, manufacturing, commercial_real_estate, transportation_hubs, critical_infrastructure, banking_atm, hospitality_venues, education_campus, healthcare_facilities — each runs a curated chain of agents
- **7 Agent Types**: synthesis, risk_review, incident_brief, compliance_brief, loss_prevention, perimeter_chain, privacy_review
- **Orchestrator**: chains agents in sequence, polls for completion, handles failures
- **SAM 3.1** (planned): for object/item tracking
- **Web UI**: Vite + React, upload + poll workflow
- **SQLite**: job + event store

## What We'd Use It For
Could be offered as a service through the AI White-Collar Staffing Agency — Russell Tuna deployed as a video analytics worker. Potential clients: warehouses, retailers, manufacturers, logistics companies, campuses. Clean architecture to replicate for similar domain-specific multi-agent pipelines.

## How It Compares to What We Have
Solomon OS doesn't currently have a video analytics vertical. Russell Tuna + Hermes could be extended to handle this workload. The industry pipeline pattern (curated agent chains per vertical) is a good architecture to adopt for other domain-specific agent offerings.

## Recommendation
**SKILL** — Study and potentially clone/integrate. The industry pipeline + orchestrator pattern is solid architecture. Could inform how Hermes builds domain-specific agent chains. Low urgency — no immediate client demand — but worth having on the shelf as a potential service offering.

## Files Analyzed
README.md, src/ structure, industry_pipelines.py reference

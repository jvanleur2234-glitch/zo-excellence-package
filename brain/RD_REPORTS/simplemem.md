# RD Report: SimpleMem by AIMING-Lab

**Research date:** 2026-04-14
**Researched by:** Zo 1
**Recommendation:** SKILL — study patterns, consider MCP integration or partial port to Hermes

---

## What It Is
Efficient lifelong memory system for LLM agents. Three-stage pipeline: Semantic Structured Compression → Online Semantic Synthesis → Intent-Aware Retrieval Planning. MIT licensed, 3.2k stars, active development.

## Key Numbers
- **64% better** cross-session recall than Claude-Mem (LoCoMo score: 48 vs 29.3)
- **43.24% F1** on LoCoMo benchmark
- Memory construction: ~92 seconds vs competitors at 1350s+
- 3-layer indexing: semantic (vector) + lexical (BM25) + symbolic (metadata)

## Architecture
1. **Semantic Structured Compression** — raw dialogue → atomic memory units with coreference resolution + absolute timestamps. Multi-view indexing.
2. **Online Semantic Synthesis** — deduplicates/merges related memories on-the-fly during writes. No background batch job needed.
3. **Intent-Aware Retrieval Planning** — given a query, plans retrieval strategy (semantic/lexical/symbolic blend), executes in parallel, merges results.

## What We Have vs What They Have
Solomon OS/Hermes has:
- Basic vector store for embeddings
- Session summaries
- Telegram summaries for continuity

SimpleMem adds:
- Automatic coreference resolution ("He" → "Bob")
- Temporal anchoring (relative → absolute timestamps)
- 3-layer hybrid retrieval (not just semantic similarity)
- On-the-fly deduplication and consolidation
- Intent-aware query planning

## Integration Options for Hermes

### Option A: MCP Integration (Fast)
- SimpleMem already has an MCP server (docker or pip install)
- Hermes connects as MCP client
- Pro: Works out of the box, low implementation effort
- Con: External dependency, needs OpenAI-compatible API

### Option B: Pattern Port (Slow but Own)
- Reverse-engineer 3-layer retriever + compression pipeline
- Port to Python, integrate into Hermes memory layer
- Pro: Fully self-contained, no external deps
- Con: Significant engineering effort, 2-3 weeks

### Option C: Hybrid
- Use SimpleMem MCP for memory construction + retrieval
- Adapt the retrieval planning logic into Hermes query flow
- Pro: Best of both
- Con: Still needs API key

## Action
1. Clone and study: `git clone https://github.com/aiming-lab/SimpleMem.git`
2. Review `core/hybrid_retriever.py` and `core/memory_builder.py` for pattern extraction
3. Test MCP server with Ollama (local, no API costs)
4. Decide: MCP integration vs pattern port based on engineering bandwidth

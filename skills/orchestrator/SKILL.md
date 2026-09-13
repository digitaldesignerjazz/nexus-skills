---
name: orchestrator
description: Public control-plane conductor for the Nexus stack. Owns start order, health checks, activation sequences, path-root resolution and status reports. Activates on orchestrator, start nexus, activate, full-report, mesh-check, ai-check, control plane. Does not replace Nexus domain knowledge or rune casting.
license: Apache-2.0
metadata:
  type: workflow
  version: "0.1"
  layer: public-oss
  stub: https://github.com/digitaldesignerjazz/orchestrator
---

# Orchestrator (public excerpt)

The Orchestrator is the conductor, not the score. Nexus holds what the stack is. This skill holds what runs, in which order, and whether it is actually up.

The public GitHub stub `digitaldesignerjazz/orchestrator` is a door, not the runtime.

## Public start order

1. Resolve the working root before any start. Do not pretend all trees are one directory.
2. Check prereqs (python3, optional docker/rust, overlay binary).
3. Bring the managed overlay up as primary identity.
4. Optional companion overlay last, never as identity replacement.
5. Swarm skilllogin locally as needed — state files stay off this repository.
6. Proposed casters only in dry-run until a public spec says live.
7. Prototypes last, only with a mesh pulse.

## Honesty rules

- If a binary is absent, report MISSING. Do not invent peers or nodes.
- Optional layers may be down without failing the whole stack.
- Never log setup keys, overlay env files or private ledgers.
- Status reports belong in the operator session, not in this public tree.

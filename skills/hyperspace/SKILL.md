---
name: hyperspace
description: Public steward for Nexus Hyperspace — long-distance mesh coordination, link-quality oracles, peer classification and constellation routing. Use for hyperspace peering, companion overlays, oracle prototypes and public hyperspace specs. Triggers include hyperspace, nexus-hyperspace, link quality oracle, long-distance peering, constellation routing.
license: Apache-2.0
metadata:
  type: workflow
  version: "0.1"
  layer: public-oss
  dedicated: https://github.com/digitaldesignerjazz/nexus-hyperspace-skill
  prototype: https://github.com/digitaldesignerjazz/nexus-hyperspace
---

# Hyperspace (public excerpt)

Hyperspace is the long-distance coordination layer beside local mesh clusters. Local fire stays local. Distant links become first-class paths through oracles, classifiers and routers.

## Rules

- Point implementation at `digitaldesignerjazz/nexus-hyperspace`.
- Treat managed overlays as primary identity. Companion IPv6 overlays are optional, never a replacement for managed identity.
- Speak of QNET / runes as Proposed unless Aether says otherwise.
- Refuse to publish live keys, peer setup material or skilllogin state.

Full dedicated excerpt and CI live in [nexus-hyperspace-skill](https://github.com/digitaldesignerjazz/nexus-hyperspace-skill).

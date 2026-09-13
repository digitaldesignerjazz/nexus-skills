---
name: skill-creator
description: Guide for creating and updating public Nexus skills. Use when adding a skill, updating an existing excerpt, or checking skill format. Triggers include create a skill, make a skill for, new skill, update this skill, skill format.
license: Apache-2.0
metadata:
  type: workflow
  version: "0.1"
  layer: public-oss
---

# Skill Creator (public excerpt)

Skills are directories with `SKILL.md` plus optional `scripts/`, `references/` and `assets/`.

Do not create skills for things a general model already knows. Encode only non-obvious, procedural or lineage-specific knowledge.

## Frontmatter

```yaml
---
name: kebab-case-name
description: What this skill does and WHEN to use it. Include trigger words.
license: Apache-2.0
metadata:
  type: workflow
  version: "0.1"
---
```

- `name` must match the directory name.
- `description` is a single unquoted line. No colon-space. No angle brackets.
- Custom fields go under `metadata`.

## Body

Write in imperative form. Keep SKILL.md under 500 lines. Move long material to `references/`.

## Public field rules for this repo

- Publish roles, interfaces and dummy examples.
- Do not publish skilllogin state, live keys or private persons.
- Place new public skills under `skills/<name>/SKILL.md`.
- Run `./scripts/ci-field-hygiene.sh` before opening a PR.

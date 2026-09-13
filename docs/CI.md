# CI

Workflow: [`.github/workflows/ci.yml`](../.github/workflows/ci.yml)

| Piece | Choice |
|-------|--------|
| Trigger | `push` to `main`, pull requests, `workflow_dispatch` |
| Runner | GitHub-hosted `ubuntu-latest` |
| Permissions | `contents: read` |
| Job | field hygiene + skill frontmatter |
| Secrets | none |

```bash
./scripts/ci-field-hygiene.sh
```

Self-hosted Hannover / Cyberspace runners stay off this field.

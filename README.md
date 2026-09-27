# rust-template

Public **Template** for new Rust repos in [to-ge-da](https://github.com/to-ge-da).

Org defaults (tooling, CI, GitHub templates) **without** an application crate — no `src/`, `Cargo.toml`, or `scripts/` yet.

## How to use

1. Click **Use this template** → **Create a new repository**.
2. Clone, then `mise install`.
3. Run `just --list` for tasks. Cargo recipes and CI cargo steps soft-skip until you add `Cargo.toml` / `src/`.

## Included files

| Path | Purpose |
|------|---------|
| `AGENTS.md` | Notes for coding agents |
| `justfile` | lint/fmt/build/test, CI scan/pin, mise helpers |
| `mise.toml` | Rust + `zizmor`, `pinact`, `jq` |
| `rust-toolchain.toml` | Rust channel (aligned with mise) |
| `.gitignore` | Standard Rust ignores |
| `.github/workflows/ci.yml` | Light CI (hygiene; cargo soft-skip) |
| `.github/dependabot.yml` | Weekly GitHub Actions updates |
| `.github/pull_request_template.md` | PR checklist |
| `.github/ISSUE_TEMPLATE/` | Bug and feature templates |

## Quick commands

```bash
just ci-scan
just check
just mise-tools
```

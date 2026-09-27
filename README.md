# rust-template

Public **Template** repository for new Rust repos in the [to-ge-da](https://github.com/to-ge-da) organization.

This scaffold ships org defaults (tooling, CI hygiene, GitHub templates) **without** an application crate yet. There is no `src/`, `Cargo.toml`, or `scripts/` directory — add those when you start the real project.

## How to use

1. On GitHub, open this repository and click **Use this template** → **Create a new repository**.
2. Choose the `to-ge-da` org (or your account), name the repo, and create it.
3. Clone your new repo and install tools with [mise](https://mise.jdx.dev/):

   ```bash
   mise install
   ```

4. Use [just](https://github.com/casey/just) for common tasks (`just --list`).
5. When you are ready for a crate, add `Cargo.toml` / `src/` (and update CI recipes as needed). Until then, cargo-related `just` recipes and CI cargo steps soft-skip so the template stays green.

## Included files

| Path | Purpose |
|------|---------|
| `justfile` | Task runner recipes (lint/fmt/build/test, CI scan/pin, mise helpers) |
| `mise.toml` | Pinned Rust toolchain + tools (`zizmor`, `pinact`, `jq`) |
| `rust-toolchain.toml` | Rust channel aligned with `mise.toml` |
| `.gitignore` | Standard Rust ignores (`target/`, etc.) |
| `.github/workflows/ci.yml` | Light v1 CI (workflow hygiene; cargo soft-skip without `Cargo.toml`) |
| `.github/dependabot.yml` | Weekly GitHub Actions updates |
| `.github/pull_request_template.md` | PR checklist (prefer ready-for-review) |
| `.github/ISSUE_TEMPLATE/` | Bug and feature request templates |

## Quick commands

```bash
just say              # greeting
just mise-tools       # list tools from this mise.toml
just ci-scan          # zizmor + pinact verify on workflows
just ci-pin           # pin Actions to SHAs with pinact
just check            # cargo check (skips if no Cargo.toml)
```

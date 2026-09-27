# AGENTS.md

Guidance for cloud and coding agents working in repositories created from this template.

## Purpose

This repo is the **to-ge-da** org Rust template / scaffold: shared tooling and GitHub defaults for new Rust projects. It does **not** ship an application crate yet (`src/`, `Cargo.toml`, and `scripts/` are added when a real project starts).

## Conventions

- **Commits:** Conventional Commits (e.g. `chore:`, `feat:`, `fix:`). English only.
- **PRs:** Prefer **ready for review** (not draft). English title and body. Docs and comments in English.
- **Scope:** Do not invent product features, app crates, or Kai/product code. Stay within the template/scaffold unless the issue or PR asks otherwise.

## Pull requests

When filling the PR template:

1. **Summary** — what changed and why (tie to an issue when applicable).
2. **Checklist** — mark ready-for-review; note CI green or any justified soft-skip (e.g. no `Cargo.toml` yet).
3. **Closing** — use `Closes #<n>` when the PR completes an issue.

## Local tooling

- Install tools with `mise install`.
- Use `just --list` for common tasks. Cargo recipes soft-skip until `Cargo.toml` exists.
- Prefer `just ci-scan` / workflow hygiene before relying on CI alone.

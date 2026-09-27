# Alias
alias t := mise-tools

# Greeting message
@say greeting="Keep good relations, mongst InI":
    echo "{{greeting}}"

# Run clippy linter
@lint:
    if [ ! -f Cargo.toml ]; then echo "Cargo.toml is not present yet — skipping lint."; else cargo clippy; fi

# Format the code
@fmt:
    if [ ! -f Cargo.toml ]; then echo "Cargo.toml is not present yet — skipping fmt."; else cargo fmt; fi

# Clean build artifacts
@clean:
    if [ ! -f Cargo.toml ]; then echo "Cargo.toml is not present yet — skipping clean."; else cargo clean; fi

# Build debug binary
@build:
    if [ ! -f Cargo.toml ]; then echo "Cargo.toml is not present yet — skipping build."; else cargo build; fi

# Check compilation without building
@check:
    if [ ! -f Cargo.toml ]; then echo "Cargo.toml is not present yet — skipping check."; else cargo check; fi

# Run tests
@test:
    if [ ! -f Cargo.toml ]; then echo "Cargo.toml is not present yet — skipping test."; else cargo test; fi

# CI security audit (zizmor + pinact verify)
[working-directory('.github')]
@ci-scan:
    zizmor dependabot.yml ./workflows/*.yml --no-exit-codes
    pinact run --verify ./workflows/*.yml

# Pin GitHub Actions to immutable SHAs
[working-directory('.github')]
@ci-pin:
    pinact run ./workflows/*.yml

# List mise tools installed in current directory
@mise-tools:
    mise ls --json | jq -r --arg pwd "$(pwd)" 'to_entries[] | select(.value[].source.path != null and (.value[].source.path | contains($pwd))) | .key'

# Preview local mise.toml tool upgrades (no changes)
@mise-upgrade-dry:
    mise upgrade --local --dry-run

# Apply tool upgrades from local mise.toml only
@mise-upgrade:
    mise upgrade --local

# List GitHub Actions workflows
@workflows:
    gh workflow list --json name --jq "to_entries[] | .value.name"

#!/bin/sh -ex

echo "linting python"
mypy tests
black tests --check
isort tests scripts --check-only
ruff tests scripts

echo "linting rust"
cargo fmt --version
cargo fmt --all -- --check
cargo clippy --version
cargo clippy -- -D warnings -A incomplete_features -W clippy::dbg_macro -W clippy::print_stdout

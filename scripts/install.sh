#!/bin/sh -e

echo "🐍 installing python packages"
pip install --upgrade pip maturin
pip install --no-cache-dir '.[dev,test]'
pre-commit install

echo "🦀 maturin develop"
maturin develop

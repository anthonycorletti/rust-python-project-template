#!/bin/sh -e

pip install --upgrade pip maturin
pip install --no-cache-dir '.[dev,test]'
maturin build
pip install --no-cache-dir target/wheels/*.whl

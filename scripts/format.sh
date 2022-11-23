#!/bin/sh -ex

black tests scripts
isort tests scripts
ruff tests scripts --fix

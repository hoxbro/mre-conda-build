#!/usr/bin/env bash

set -euxo pipefail

python -m pip install https://github.com/conda/conda-build/archive/refs/pull/5857/merge.tar.gz --no-deps
python -m build --sdist .
python -m conda build scripts/conda/recipe --no-anaconda-upload --no-verify -c conda-forge --package-format 2

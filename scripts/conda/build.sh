#!/usr/bin/env bash

set -euxo pipefail

python -m build --sdist .
conda build scripts/conda/recipe --no-anaconda-upload --no-verify -c conda-forge --package-format 2

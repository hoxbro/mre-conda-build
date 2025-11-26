#!/usr/bin/env bash

set -euxo pipefail

export CONDA_PKGS_DIRS="$(mktemp -d)"
export CONDA_BLD_PATH="$(mktemp -d)"

python -m build --sdist .

python -m conda info
python -m conda config --show-sources

python -m conda build scripts/conda/recipe --no-anaconda-upload --override-channels --no-verify -c conda-forge --package-format 2

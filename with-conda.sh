#!/usr/bin/env bash
set -euxo pipefail

conda create -y -p ./.conda/new-env conda=25.11.0 conda-build=25.11.0 conda-libmamba-solver=25.11.0 python-build
eval "$(conda shell.bash activate mre-new)"

bash scripts/conda/build.sh

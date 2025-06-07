#!/usr/bin/env bash

set -euo pipefail

VER=20250607

docker build -t davetang/seurat_test_aarch64:${VER} .

cat <<EOF
Push to Docker Hub

docker login
docker push davetang/seurat_test_aarch64:${VER}

EOF

#!/usr/bin/env bash

set -euo pipefail

VER=20250607
IMG=davetang/seurat_test:${VER}
NAME=rstudio_server_seurat_test
PORT=8654

docker run \
   --name ${NAME} \
   -d \
   --rm \
   -p ${PORT}:8787 \
   -v ${HOME}/github/:/home/rstudio/work \
   -e PASSWORD=password \
   -e USERID=$(id -u) \
   -e GROUPID=$(id -g) \
   ${IMG}

>&2 echo ${NAME} listening on port ${PORT}
exit 0

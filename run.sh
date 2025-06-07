#!/usr/bin/env bash

set -euo pipefail

VER=20250607
ARCH=$(arch)

if [[ ${ARCH} == aarch64 ]]; then
   IMG=davetang/seurat_test_aarch64:${VER}
elif [[ ${ARCH} == x86_64 ]]; then
   IMG=davetang/seurat_test:${VER}
else
   >&2 echo Unsupported architecture
   exit 1
fi

docker run \
   --rm \
   -v $(pwd):$(pwd) \
   -w $(pwd) \
   -u $(stat -c "%u:%g" $HOME) \
   ${IMG} Rscript -e 'rmarkdown::render("seurat.Rmd", output_file="seurat.html")'

rm seurat.html

exit 0

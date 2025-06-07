#!/usr/bin/env bash

set -euo pipefail

VER=20250607
IMG=davetang/seurat_test:${VER}

docker run \
   --rm \
   -v $(pwd):$(pwd) \
   -w $(pwd) \
   -u $(stat -c "%u:%g" $HOME) \
   ${IMG} Rscript -e 'rmarkdown::render("seurat.Rmd", output_file="seurat.html")'

rm seurat.html

exit 0

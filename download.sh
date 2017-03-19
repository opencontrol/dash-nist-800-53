#!/bin/bash

set -e
set -x

rm src/*.html

wget \
  -r --no-parent \
  -P src \
  --convert-links --adjust-extension \
  -nH  --cut-dirs=2 \
  --reject "search" \
  --wait=1 \
  https://beta.nvd.nist.gov/800-53/Rev4

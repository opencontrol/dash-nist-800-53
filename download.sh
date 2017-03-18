#!/bin/bash

set -e
set -x

wget \
  -r --no-parent \
  -P src \
  --convert-links --adjust-extension \
  -nH  --cut-dirs=3 \
  --reject "search" \
  --wait=1 \
  https://web.nvd.nist.gov/view/800-53/Rev4/home

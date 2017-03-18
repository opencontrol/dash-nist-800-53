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

# wget doesn't seem to handle the `--convert-links` with `--adjust-extension`, so convert the remaining absolute URLs
# http://savannah.gnu.org/bugs/?25340
sed -i '' -E 's/https?:\/\/web\.nvd\.nist\.gov\/view\/800-53\/Rev4\///g' src/*.html

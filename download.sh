#!/bin/bash

set -e
set -x

cd src

rm -rf beta.nvd.nist.gov hts-cache

httrack https://beta.nvd.nist.gov/800-53/Rev4

#!/bin/bash

set -e
set -x

cd src

httrack https://beta.nvd.nist.gov/800-53/Rev4

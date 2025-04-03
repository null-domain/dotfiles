#!/usr/bin/env bash

# -e - exit immediately if a command exits with a non-zero status
# -u - treat unset variables as an error when substituting
# -o pipefail - return the exit status of the last command in the pipeline that failed
set -euo pipefail

sh -c "$(curl -fsSL https://mise.run)"

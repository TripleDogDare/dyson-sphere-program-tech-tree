#!/bin/bash
set -euo pipefail
# Remove the prefix from the Icon files
for file in *; do mv "$file" "${file#Icon_}"; done;

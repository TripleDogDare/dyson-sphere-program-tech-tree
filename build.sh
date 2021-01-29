#!/bin/bash
set -euo pipefail
set -x

mkdir -p intermediate
find src -name '*.m4' -type f -print0 | xargs -0 -I{} sh -c '>&2 echo "${1}"; m4 --debug "${1}" > "intermediate/`basename "${1}" .m4`.dot"' -- "{}"

mkdir -p output
find intermediate -name '*.dot' -type f -print0 | xargs -0 -I{} sh -c '>&2 echo "${1}"; dot -Tpng "${1}" -o "output/`basename "${1}" .dot`.png"' -- "{}"


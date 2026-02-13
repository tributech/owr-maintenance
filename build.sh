#!/usr/bin/env bash
set -euo pipefail

DURATION="${MAINTENANCE_DURATION:-5 minutes}"

rm -rf dist
cp -r public dist

sed -i.bak "s/__MAINTENANCE_DURATION__/${DURATION}/g" dist/index.html
rm -f dist/index.html.bak

#!/usr/bin/env bash
# Render an HTML file (social creative or dashboard) to a PNG at an exact size.
# Usage: scripts/render.sh input.html output.png [width] [height]
# Needs Node.js. Uses your installed Google Chrome if it has one; otherwise
# Playwright's own Chromium (first time: npx playwright install chromium).
set -euo pipefail
IN="$1"; OUT="$2"; W="${3:-1080}"; H="${4:-1350}"
ABS="$(cd "$(dirname "$IN")" && pwd)/$(basename "$IN")"
PW="npx -y playwright@1.56.1"
ARGS=(screenshot --viewport-size="$W,$H" --wait-for-timeout=1500 "file://$ABS" "$OUT")
if $PW "${ARGS[0]}" --channel chrome "${ARGS[@]:1}" >/dev/null 2>&1; then
  echo "Saved $OUT"
elif $PW "${ARGS[@]}"; then
  echo "Saved $OUT"
else
  echo "Could not render. Open $IN in a browser and take a screenshot instead." >&2; exit 1
fi

#!/usr/bin/env bash
set -euo pipefail

# Vercel injects the production domain at build time.
# https://vercel.com/docs/projects/environment-variables/system-environment-variables
HOST="${VERCEL_PROJECT_PRODUCTION_URL:-${VERCEL_URL:-}}"
if [[ -z "$HOST" ]]; then
  echo "No Vercel URL env var found — leaving __SITE_URL__ placeholders (local dev)."
  exit 0
fi

SITE_URL="https://${HOST%/}"
echo "Injecting site URL: ${SITE_URL}"

for file in index.html sitemap.xml robots.txt; do
  if [[ -f "$file" ]]; then
    sed -i "s|__SITE_URL__|${SITE_URL}|g" "$file"
  fi
done

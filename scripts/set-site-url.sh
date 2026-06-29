#!/usr/bin/env bash
set -euo pipefail

# Canonical production URL (committed default). Overwritten at Vercel build if the
# production domain differs (e.g. after adding a custom domain in the dashboard).
CANONICAL_DEFAULT="https://emoji-day-hm.vercel.app"

HOST="${VERCEL_PROJECT_PRODUCTION_URL:-${VERCEL_URL:-}}"
if [[ -z "$HOST" ]]; then
  echo "No Vercel URL env var — using committed canonical: ${CANONICAL_DEFAULT}"
  exit 0
fi

SITE_URL="https://${HOST%/}"
if [[ "$SITE_URL" == "$CANONICAL_DEFAULT" ]]; then
  echo "Production URL matches canonical: ${SITE_URL}"
  exit 0
fi

echo "Updating canonical URL: ${CANONICAL_DEFAULT} → ${SITE_URL}"

for file in index.html sitemap.xml robots.txt; do
  if [[ -f "$file" ]]; then
    sed -i "s|${CANONICAL_DEFAULT}|${SITE_URL}|g" "$file"
  fi
done

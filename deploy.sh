#!/usr/bin/env bash
# Publica la web en Cloudflare Pages -> https://f1rep.pages.dev
set -euo pipefail
cd "$(dirname "$0")"

rm -rf .deploy
mkdir -p .deploy
cp index.html logo-f1.png .deploy/

npx --yes wrangler@latest pages deploy .deploy --project-name f1rep --branch main --commit-dirty=true

rm -rf .deploy

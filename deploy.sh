#!/usr/bin/env bash
# Quick deploy: stage, commit, and push index.html (and any other tracked files).
# Usage:
#   bash deploy.sh "your commit message here"
# If no message is given, uses a default with the current date.

set -e
cd "$(dirname "$0")"

MSG="${1:-Update $(date '+%Y-%m-%d %H:%M')}"

git add -A
if git diff --cached --quiet; then
  echo "Nothing to commit — working tree is clean."
  exit 0
fi

git commit -m "$MSG"
git push

echo
echo "✓ Pushed. Netlify will redeploy in ~30–60 seconds."
echo "  Watch progress at: https://app.netlify.com"

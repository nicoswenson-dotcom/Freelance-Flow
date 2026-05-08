#!/usr/bin/env bash
# One-time setup: initialize git repo and create the first commit.
# Run this once from inside the "Freelance Flow" folder.

set -e
cd "$(dirname "$0")"

# Clean up any stale git state from previous attempts
rm -rf .git .git.removeme 2>/dev/null || true

git init -b main
git add .gitignore README.md netlify.toml index.html
git commit -m "Initial commit: FreelanceFlow single-file PWA"

echo
echo "✓ Local repo created with initial commit."
echo
echo "Next steps:"
echo "  1. Create an empty repo on GitHub.com (don't add README/license)."
echo "  2. Copy its URL, then run from this folder:"
echo "       git remote add origin <PASTE_URL_HERE>"
echo "       git push -u origin main"
echo "  3. On Netlify: 'Add new site' → 'Import from GitHub' → pick the repo."

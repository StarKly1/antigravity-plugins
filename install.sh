#!/usr/bin/env bash
set -euo pipefail

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
TARGET_DIR="$HOME/.gemini/config/plugins"
PLUGINS=(office-documents engineering-protocols writing-and-learning design-workflows finance-workflows)

mkdir -p "$TARGET_DIR"

for p in "${PLUGINS[@]}"; do
  dest="$TARGET_DIR/$p"
  if [ -e "$dest" ] && [ ! -L "$dest" ]; then
    rm -rf "$dest"
  fi
  ln -sfn "$REPO_DIR/$p" "$dest"
  echo "Linked $p -> $dest"
done

echo "Done. All 5 plugins are synced to $TARGET_DIR."

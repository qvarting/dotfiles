#!/bin/bash

# Directory where this repo lives
DOTFILES_DIR="$(cd "$(dirname "$0")" && pwd)"

# List of dotfiles to link
FILES=(
  .vimrc
)

# Backup dir
BACKUP_DIR="$HOME/dotfiles_backup_$(date +%Y%m%d_%H%M%S)"
mkdir -p "$BACKUP_DIR"

echo "🔗 Linking dotfiles..."
for file in "${FILES[@]}"; do
  TARGET="$HOME/$file"
  SOURCE="$DOTFILES_DIR/$file"

  if [ -e "$TARGET" ] || [ -L "$TARGET" ]; then
    echo "📦 Backing up $TARGET → $BACKUP_DIR"
    mv "$TARGET" "$BACKUP_DIR/"
  fi

  echo "➡️  Linking $SOURCE → $TARGET"
  ln -s "$SOURCE" "$TARGET"
done

echo "✅ Done. Dotfiles linked."

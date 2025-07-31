#!/usr/bin/env bash

set -euo pipefail

DOTFILES_DIR="$HOME/dotfiles"
BACKUP_DIR="$HOME/dotfiles_backup"
FILES_TO_LINK=(
  ".bashrc"
  ".bash_aliases"
  ".bash_git"
)

backup_and_link() {
  local file=$1
  local source="$DOTFILES_DIR/$file"
  local target="$HOME/$file"

  echo "DEBUG: source file = $source"
  echo "DEBUG: target link = $target"

  if [ ! -e "$source" ]; then
    echo "ERROR: Source file $source does not exist!"
    return 1
  fi

  if [ -e "$target" ] && [ ! -L "$target" ]; then
    echo "Backing up existing $file to $BACKUP_DIR"
    mkdir -p "$BACKUP_DIR"
    mv "$target" "$BACKUP_DIR/$file"
  fi

  echo "Linking $source → $target"
  ln -sf "$source" "$target"
}

echo "🔧 Setting up dotfiles from $DOTFILES_DIR..."

for file in "${FILES_TO_LINK[@]}"; do
  backup_and_link "$file"
done

echo "✅ Dotfiles setup complete. Run \`source ~/.bashrc\` to apply changes."

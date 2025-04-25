#!/bin/bash

set -e

CONFIG_ROOT="$HOME/.config"
CONFIG_DIR="$CONFIG_ROOT/nvim"
BACKUP_DIR="$CONFIG_ROOT/nvim-backup-$(date +%s)"

echo "Installing neovim configuration..."

# Stelle sicher, dass ~/.config existiert
if [ ! -d "$CONFIG_ROOT" ]; then
    echo "Creating $CONFIG_ROOT directory..."
    mkdir -p "$CONFIG_ROOT"
fi

# Backup, falls ~/.config/nvim existiert
if [ -d "$CONFIG_DIR" ]; then
    echo "Found existing nvim config. Moving it to: $BACKUP_DIR"
    mv "$CONFIG_DIR" "$BACKUP_DIR"
fi

# Repository klonen
git clone https://github.com/michael-lehn/neovim-config.git "$CONFIG_DIR"

echo "Done!"
echo ""
echo "You can now start nvim. Plugins will install automatically."


# Neovim Config

This is my personal Neovim configuration.  
It is written in Lua and uses [lazy.nvim](https://github.com/folke/lazy.nvim)
as the plugin manager.

## Installation

**Requirement:** Neovim 0.9 or newer should be installed.

To install this configuration, copy the following command and paste it into a
macOS Terminal or Linux shell prompt:

```bash
curl -fsSL https://raw.githubusercontent.com/michael-lehn/neovim-config/main/install.sh | bash
```

The script will:
- Create a backup if a configuration already exists at `$HOME/.config/nvim`.
- Clone this repository into `$HOME/.config/nvim`.

**Note:** On the first start of `nvim`, plugins will be installed automatically.

## Quick Start

After installation, simply open Neovim:

```bash
nvim
```

Then run the following command inside Neovim to verify that everything is
working correctly:

```vim
:checkhealth
```

This will check that Neovim, the plugin manager, and language servers are
properly set up.

## Contents

- **init.lua** – Main configuration file
- **lua/** – Settings, key mappings, plugin setup
- **lazy-lock.json** – Locks plugin versions for reproducible setups

## Plugins

This configuration uses [lazy.nvim](https://github.com/folke/lazy.nvim) to
manage plugins.  All plugins will be installed automatically on the first
startup.


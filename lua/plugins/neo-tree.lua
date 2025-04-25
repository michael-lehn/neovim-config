return {
  'nvim-neo-tree/neo-tree.nvim',
  branch = 'v2.x',
  requires = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons',
    'MunifTanjim/nui.nvim',
  },
  config = function()
    require('neo-tree').setup({
      close_if_last_window = true,
      popup_border_style = "rounded",
      enable_git_status = true,
      enable_diagnostics = true,
      default_component_configs = {
        indent = {
          padding = 0,
          with_markers = true,
          indent_marker = "|",
          last_indent_marker = "|",
          highlight = "NeoTreeIndentMarker",
        },
        icon = {
          folder_closed = "",
          folder_open = "",
          folder_empty = "ﰊ",
          default = "*",
        },
        modified = {
          symbol = "[+]",
          highlight = "NeoTreeModified",
        },
        name = {
          trailing_slash = false,
          use_git_status_colors = true,
        },
        git_status = {
          symbols = {
            added     = "✚",
            modified  = "",
            deleted   = "✖",
            renamed   = "",
            untracked = "",
            ignored   = "",
            unstaged  = "✗",
            staged    = "✓",
            conflict  = "",
          }
        },
      },
      window = {
        position = "left",
        width = 20,
        mappings = {
          ["o"] = "open",
          ["<CR>"] = "open",
          ["<2-LeftMouse>"] = "open",
        },
	auto_resize = true,
        min_width = 1,
	auto_expand_width = true,
      },
      filesystem = {
        follow_current_file = true,
        hijack_netrw_behavior = "open_default",
        use_libuv_file_watcher = true,
      },
    })
  end,
}

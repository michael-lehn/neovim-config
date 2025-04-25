vim.cmd('colorscheme vim')
vim.cmd('syntax enable')
vim.cmd('filetype plugin indent on')
vim.cmd('syntax on')

vim.opt.tabstop = 8
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.termguicolors = false
vim.opt.colorcolumn = "81"
vim.opt.number = false
vim.opt.relativenumber = false
vim.opt.tabstop = 8
vim.opt.autoindent = true
vim.opt.smartindent = true

vim.api.nvim_set_keymap('n', '<leader>e', ':Neotree toggle<CR>',
	{ noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-j>', ':Neotree toggle<CR>',
	{ noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '{', 'gT',
	{ noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '}', 'gt',
	{ noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<S-Left>', 'gT',
	{ noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<S-Right>', 'gt',
	{ noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<A-Left>', '<C-W>h',
	{ noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<A-Right>', '<C-W>l',
	{ noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<A-Down>', '<C-W>j',
	{ noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<A-Up>', '<C-W>k',
	{ noremap = true, silent = true })

function ToggleLineNumbers()
  if vim.wo.number then
    vim.wo.number = false
    vim.wo.relativenumber = false
  else
    vim.wo.number = true
    vim.wo.relativenumber = true
  end
end

vim.api.nvim_set_keymap('n', '<C-n>', ':lua ToggleLineNumbers()<CR>',
			{ noremap = true, silent = true })

require("config.lazy")


vim.cmd('syntax on')

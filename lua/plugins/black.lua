return {
    "nvimtools/none-ls.nvim",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
	local null_ls = require("null-ls")

	local function executable(name)
	    return vim.fn.executable(name) == 1
	end

	local sources = {}
	if executable("black") then
	    table.insert(sources, null_ls.builtins.formatting.black.with({
		extra_args = { "--fast", "--line-length", "80" },
	    }))
	end

	null_ls.setup({
	    sources = sources,
	})

	vim.api.nvim_create_autocmd("BufWritePre", {
	    pattern = "*.py",
	    callback = function()
		vim.lsp.buf.format({ async = false })
	    end,
	})
    end,
}

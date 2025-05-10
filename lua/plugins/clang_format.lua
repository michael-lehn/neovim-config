return {
    "nvimtools/none-ls.nvim",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
	local null_ls = require("null-ls")

	local function executable(name)
	    return vim.fn.executable(name) == 1
	end

	local sources = {}

	if executable("clang-format") then
	    table.insert(sources,
		null_ls.builtins.formatting.clang_format.with({
		    extra_args = { "--style=file" },
		    filetypes = { "c", "cpp", "objc", "objcpp" },
		}))
	else
	    vim.notify("clang-format not found – formatter disabled",
		vim.log.levels.WARN)
	end

	null_ls.setup({ sources = sources })

	vim.api.nvim_create_autocmd("BufWritePre", {
	    pattern = { "*.c", "*.cpp", "*.h", "*.hpp" },
	    callback = function()
		vim.lsp.buf.format({ async = false })
	    end,
	})
    end,
}

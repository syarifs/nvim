local setup = require("utils").plugins
local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

local formatting = require("null-ls").builtins.formatting
local diagnostics = require("null-ls").builtins.diagnostics

local with_diagnostics_code = function(builtin)
	return builtin.with({
		diagnostics_format = "[#{c}] #{m}",
	})
end

setup("null-ls", {
	sources = {
		formatting.prettier.with({
			extra_filetypes = { "php" },
		}),
		formatting.blade_formatter,
		formatting.stylua,
		formatting.eslint,
		formatting.clang_format,
		formatting.gofmt,

		with_diagnostics_code(diagnostics.staticcheck),
		with_diagnostics_code(diagnostics.clang_check),
		with_diagnostics_code(diagnostics.pylint),
	},
	on_attach = function(client, bufnr)
		if client.supports_method("textDocument/formatting") then
			vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
			vim.api.nvim_create_autocmd("BufWritePre", {
				group = augroup,
				buffer = bufnr,
				callback = function()
					vim.lsp.buf.format({
						bufnr = bufnr,
						timeout_ms = 3000,
						filter = function(c)
							return c.name == "null-ls"
						end,
					})
				end,
			})
		end
	end,
})

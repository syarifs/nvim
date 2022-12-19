local setup = require("utils").plugins
local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

local formatting = require("null-ls").builtins.formatting
local diagnostics = require("null-ls").builtins.diagnostics

setup("null-ls", {
	sources = {
		formatting.prettier.with({
			extra_filetypes = { "php" },
			extra_args = function()
				return {
					"--parser",
					"php",
				}
			end,
		}),
		formatting.djhtml.with({
			extra_filetypes = { "blade" },
			extra_args = function(params)
				return {
					"--tabwidth",
					vim.api.nvim_buf_get_option(params.bufnr, "shiftwidth"),
				}
			end,
		}),
		formatting.stylua,
		formatting.eslint,
		formatting.clang_format,
		formatting.gofmt,
		diagnostics.staticcheck,
		diagnostics.clang_check,
		diagnostics.pylint,
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
						filter = function(c)
							return c.name == "null-ls"
						end,
					})
				end,
			})
		end
	end,
})

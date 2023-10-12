local setup = require("utils").lsp

setup("jsonls")
setup("cssls")
setup("html", {
	filetypes = { "html", "blade" },
})

setup("emmet_ls", {
	filetypes = { "html", "blade", "vue", "javascriptreact", "htmldjango", "svelte" }
})

setup("eslint", {
	on_attach = function(_, bufnr)
		local key = require('lsp.key')
		vim.api.nvim_create_autocmd("BufWritePre", {
			buffer = bufnr,
			command = "EslintFixAll",
		})
		key(_, bufnr)
	end,
})

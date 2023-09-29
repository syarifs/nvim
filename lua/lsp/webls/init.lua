local setup = require("utils").lsp

setup("jsonls", {
	cmd = { "vscode-json-languageserver", "--stdio" },
})
setup("cssls", {
	cmd = { "vscode-css-languageserver", "--stdio" },
})
setup("html", {
	cmd = { "vscode-html-languageserver", "--stdio" },
	filetypes = { "html", "blade" },
})

setup("emmet_ls", {
	filetypes = { "html", "blade", "scss", "sass", "less", "vue", "javascriptreact", "css", "htmldjango", "svelte" }
})

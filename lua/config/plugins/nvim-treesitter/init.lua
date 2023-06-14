local setup = require("utils").plugins

vim.treesitter.language.register("blade", "php")

setup("nvim-treesitter.configs", {
	highlight = {
		enable = true,
	},
	indent = {
		enable = true,
	},
	autotag = {
		enable = true,
		filetypes = { "html", "xml", "blade" },
	},
	rainbow = {
		enable = true,
		extended_mode = true,
		max_file_lines = nil,
	},
	ensure_installed = { "http", "json", "lua", "go", "gomod", "php", "html" },
	sync_install = true,
})

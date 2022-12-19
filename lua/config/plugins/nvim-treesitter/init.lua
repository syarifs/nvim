local setup = require("utils").plugins

setup("nvim-treesitter.configs", {
	highlight = {
		enable = true,
	},
	indent = {
		enable = true,
	},
	autotag = {
		enable = true,
	},
	rainbow = {
		enable = true,
		extended_mode = true,
		max_file_lines = nil,
	},
	ensure_installed = { "http", "json", "lua", "go", "gomod", "php", "html" },
	sync_install = true,
})

local setup = require("utils").plugins
local parser_config = require "nvim-treesitter.parsers".get_parser_configs()

-- laravel blade parser
parser_config.blade = {
	install_info = {
		url = "https://github.com/EmranMR/tree-sitter-blade",
		files = { "src/parser.c" },
		branch = "main",
	},
	filetype = "blade"
}

setup("nvim-treesitter.configs", {
	highlight = {
		enable = true,
	},
	indent = {
		enable = true,
	},
	autotag = {
		enable = true,
		filetypes = { "html", "xml", "php", "blade" },
	},
	rainbow = {
		enable = true,
		extended_mode = true,
		max_file_lines = nil,
	},
	ensure_installed = { "http", "json", "lua", "go", "gomod", "php", "html", "blade", "javascript" },
	sync_install = true,
})

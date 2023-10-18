return {
	"nvim-treesitter/nvim-treesitter",
	dependencies = {
		'JoosepAlviste/nvim-ts-context-commentstring',
	},
	config = function()
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

		require("nvim-treesitter.configs").setup({
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
			context_commentstring = {
				enable = true,
			},
			ensure_installed = { "http", "json", "lua", "go", "gomod", "php", "html", "blade", "javascript", "markdown",
				"markdown_inline" },
			sync_install = true,
		})
	end
}

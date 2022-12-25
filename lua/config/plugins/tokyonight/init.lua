local setup = require("utils").plugins

vim.g.material_style = "deep ocean"

setup("tokyonight", {
	style = "night",
	styles = {
		comments = { italic = true },
		keywords = { italic = true },
		functions = {},
		variables = {},
		sidebars = "dark",
		floats = "dark",
	},
})

vim.cmd("colorscheme tokyonight-night")

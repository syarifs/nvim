local setup = require("utils").plugins

vim.g.material_style = "deep ocean"

setup("material", {
		contrast = {
				floating_windows = true
		},
		high_visibility = {
				darker = true,
		},
})

vim.cmd "colorscheme material"

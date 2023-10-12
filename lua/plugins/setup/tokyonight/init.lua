return {
	"folke/tokyonight.nvim",
	config = function()
		require("tokyonight").setup({
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
	end
}

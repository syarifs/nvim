return {
	{
		"karb94/neoscroll.nvim",
		config = function()
			require('neoscroll').setup()
		end
	},
	{
		"folke/which-key.nvim",
		config = function()
			require("which-key").setup()
		end
	},
	"rafamadriz/friendly-snippets",
}

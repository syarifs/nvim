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
	{
		"rafamadriz/friendly-snippets",
		config = function()
			require('neoscroll').setup()
		end
	},
	{
		"folke/which-key.nvim",
		config = function()
			require('neoscroll').setup()
		end
	},
	{
		"terrortylor/nvim-comment",
		config = function()
			require('neoscroll').setup()
		end
	},
	{
		"lervag/vimtex",
		config = function()
			vim.g.vimtex_view_method = 'zathura'
			vim.g.vimtex_view_compiler_method = 'pdflatex'
		end
	},
}

return {
	"nvim-telescope/telescope.nvim",
	dependencies = { "nvim-lua/popup.nvim", "nvim-lua/plenary.nvim" },
	config = function()
		local setup = require("utils").plugins

		setup("telescope", {
			pickers = {
				find_files = {
					theme = "dropdown",
				},
			},
		})
	end
}

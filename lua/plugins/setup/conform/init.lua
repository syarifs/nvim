return {
	"stevearc/conform.nvim",
	config = function()
		local setup = require("utils").plugins

		setup("conform", {
			formatters = {
				blade = {
					command = "blade-formatter",
					stdin = false,
					args = { "--write", "$FILENAME" },
				}
			},

			formatters_by_ft = {
				blade = { "blade" }
			},

			format_on_save = {
				lsp_fallback = true,
				timeout_ms = 1500
			},
		})
	end
}

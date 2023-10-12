return {
	"stevearc/conform.nvim",
	config = function()
		require("conform").setup({
			formatters = {
				blade = {
					command = "blade-formatter",
					stdin = false,
					args = { "--write", "$FILENAME" },
				}
			},

			formatters_by_ft = {
				blade = { "blade" },
				javascript = { "prettier" },
				json = { "prettier" },
				css = { "prettier" },
				html = { "prettier" },
				yaml = { "yamlfmt" },
				go = { "gofmt" },
			},

			format_on_save = {
				lsp_fallback = true,
				timeout_ms = 1500
			},
		})
	end
}

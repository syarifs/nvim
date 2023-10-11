return {
	"Zeioth/compiler.nvim",
	cmd = { "CompilerOpen", "CompilerToggleResults", "CompilerRedo" },
	dependencies = {
		{ -- The task runner we use
			"stevearc/overseer.nvim",
			cmd = { "CompilerOpen", "CompilerToggleResults", "CompilerRedo" },
			opts = {
				task_list = {
					direction = "bottom",
					min_height = 25,
					max_height = 25,
					default_detail = 1,
					bindings = { ["q"] = function() vim.cmd("OverseerClose") end },
				},
			},
		},
	},
	opts = {},
}

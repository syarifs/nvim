local setup = require("utils").plugins

setup("overseer", {
	task_list = {
		direction = "bottom",
		min_height = 25,
		max_height = 25,
		default_detail = 1,
		bindings = { ["q"] = function() vim.cmd("OverseerClose") end },
	},
})

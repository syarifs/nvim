local setup = require("utils").plugins

setup("filetype", {
	overrides = {
		complex = {
			[".blade.php"] = "blade",
		},
	},
})

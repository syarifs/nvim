local setup = require("utils").plugins

setup("filetype", {
	overrides = {
		extensions = {
			scss = "scss",
			sass = "sass",
			html = "html",
		},
		complex = {
			[".blade.php"] = "blade",
		},
	},
})

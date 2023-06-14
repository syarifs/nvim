local setup = require("utils").plugins

setup("filetype", {
	overrides = {
		complex = {
			["*.blade.php"] = "blade",
		},
		extensions = {
			css = "css",
			scss = "scss",
			sass = "sass",
			html = "html",
			php = "php",
			js = "js",
			json = "json",
		},
	},
})

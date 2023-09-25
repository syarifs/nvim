local setup = require("utils").plugins

vim.opt.list = true
vim.opt.listchars:append "space:⋅"


setup("indent_blankline", {
	space_char_blankline = " ",
	show_current_context = true,
	show_current_context_start = true
})

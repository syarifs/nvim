local ft = require('guard.filetype')
local setup = require('utils').plugins

-- Assuming you have guard-collection
ft('php,html,javascript,css'):fmt('prettier')
ft('lua'):fmt('lsp')

-- Call setup() LAST!
setup('guard', {
	-- the only options for the setup function
	fmt_on_save = true,

	-- Use lsp if no formatter was defined for this filetype
	lsp_as_default_formatter = true,
})

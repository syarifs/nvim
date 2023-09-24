local cmd = vim.cmd
local autocmd = require("utils").autocmd
local opt = require("utils").options
local vim_settings = require("config.vim.settings")

cmd("filetype plugin indent on")

vim.api.nvim_exec(
	[[
		function! DisableST()
			return " File Tree "
		endfunction
	]],
	false
)

autocmd("BufEnter", "NvimTree*", "setlocal statusline=%!DisableST()")
autocmd("TermOpen", "*", "setlocal nonumber norelativenumber")

for _, value in ipairs(vim_settings) do
	opt(value[1], value[2], value[3])
end

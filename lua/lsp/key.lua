local opts = { silent = true, noremap = true }

local function on_attach(_, bufnr)
	-- Option
	vim.api.nvim_buf_set_option(bufnr, "omnifunc", "v:lua.vim.lsp.omnifunc")

	-- Key
	vim.api.nvim_buf_set_keymap(bufnr, "n", "gr", "<cmd>Lspsaga rename<cr>", opts)
	vim.api.nvim_buf_set_keymap(bufnr, "n", "ga", "<cmd>Lspsaga code_action<cr>", opts)
	vim.api.nvim_buf_set_keymap(bufnr, "x", "ga", ":<c-u>Lspsaga range_code_action<cr>", opts)
	vim.api.nvim_buf_set_keymap(bufnr, "n", "gK", "<cmd>Lspsaga hover_doc<cr>", opts)
	vim.api.nvim_buf_set_keymap(bufnr, "n", "gdd", "<cmd>TroubleToggle document_diagnostics<cr>", opts)
	vim.api.nvim_buf_set_keymap(bufnr, "n", "gdw", "<cmd>TroubleToggle workspace_diagnostics<cr>", opts)
	vim.api.nvim_buf_set_keymap(bufnr, "n", "gdq", "<cmd>TroubleToggle quickfix<cr>", opts)
	vim.api.nvim_buf_set_keymap(bufnr, "n", "gdl", "<cmd>TroubleToggle loclist<cr>", opts)
	vim.api.nvim_buf_set_keymap(
		bufnr,
		"n",
		"<C-k>",
		"<cmd>lua require('lspsaga.action').smart_scroll_with_saga(-1)<cr>",
		opts
	)
	vim.api.nvim_buf_set_keymap(
		bufnr,
		"n",
		"<C-j>",
		"<cmd>lua require('lspsaga.action').smart_scroll_with_saga(1)<cr>",
		opts
	)
	vim.api.nvim_buf_set_keymap(bufnr, "n", "gto", "<cmd>lua vim.lsp.buf.definition()<cr>", opts)
	vim.api.nvim_buf_set_keymap(bufnr, "n", "gtt", "<cmd>TroubleToggle lsp_references<cr>", opts)
end

return on_attach

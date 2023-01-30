local opts = { silent = true, noremap = true }

local function on_attach(_, bufnr)
	-- Option
	vim.api.nvim_buf_set_option(bufnr, "omnifunc", "v:lua.vim.lsp.omnifunc")

	local function map(mode, l, r, opt)
		opts = opt or {}
		opts.silent = true
		opts.buffer = bufnr
		vim.keymap.set(mode, l, r, opts)
	end

	-- Key
	map("n", "gr", "<cmd>Lspsaga rename<cr>", opts)
	map("n", "ga", "<cmd>Lspsaga code_action<cr>", opts)
	map("x", "ga", ":<c-u>Lspsaga range_code_action<cr>", opts)
	map("n", "gK", "<cmd>Lspsaga hover_doc<cr>", opts)
	map("n", "gdd", "<cmd>TroubleToggle document_diagnostics<cr>", opts)
	map("n", "gdw", "<cmd>TroubleToggle workspace_diagnostics<cr>", opts)
	map("n", "gdq", "<cmd>TroubleToggle quickfix<cr>", opts)
	map("n", "gdl", "<cmd>TroubleToggle loclist<cr>", opts)
	map("n", "<C-k>", "<cmd>lua require('lspsaga.action').smart_scroll_with_saga(-1)<cr>", opts)
	map("n", "<C-j>", "<cmd>lua require('lspsaga.action').smart_scroll_with_saga(1)<cr>", opts)
	map("n", "gto", "<cmd>lua vim.lsp.buf.definition()<cr>", opts)
	map("n", "gtt", "<cmd>TroubleToggle lsp_references<cr>", opts)
end

return on_attach

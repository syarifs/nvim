local M = {
	-- Plugin Manager
	{ "wbthomason/packer.nvim" },

	-- LSP
	{ "neovim/nvim-lspconfig" },
	{ "onsails/lspkind-nvim" },
	{ "tami5/lspsaga.nvim" },
	{ "nvim-treesitter/nvim-treesitter" },
	{ "terrortylor/nvim-comment" },

	-- File type
	{ "nathom/filetype.nvim" },

	-- Progress Loading
	{ "j-hui/fidget.nvim",                        tag = "legacy" },

	-- Database Support
	{ "tpope/vim-dadbod" },
	{ "kristijanhusak/vim-dadbod-ui" },
	{ "kristijanhusak/vim-dadbod-completion" },

	-- Flutter Support
	{ "akinsho/flutter-tools.nvim" },

	-- Format
	{ "nvimdev/guard.nvim" },
	{ "nvimdev/guard-collection" },

	-- Completion
	{ "hrsh7th/nvim-cmp" },
	{ "hrsh7th/cmp-nvim-lsp" },
	{ "hrsh7th/cmp-buffer" },
	{ "hrsh7th/cmp-path" },
	{ "hrsh7th/cmp-nvim-lsp-signature-help" },

	-- Smooth Scrolling
	{ "karb94/neoscroll.nvim" },

	-- Indent Blankline
	{ "shellRaining/hlchunk.nvim" },

	-- Snippets
	{ "L3MON4D3/LuaSnip",                         run = "make install_jsregexp" },
	{ "rafamadriz/friendly-snippets" },
	{ "saadparwaiz1/cmp_luasnip" },

	-- Tagbar
	{ "simrat39/symbols-outline.nvim" },

	-- Theming
	{ "folke/tokyonight.nvim" },
	{ "akinsho/bufferline.nvim" },
	{ "rcarriga/nvim-notify" },
	{ "nvim-lualine/lualine.nvim" },

	-- VCS sign
	{ "tanvirtin/vgit.nvim" },

	-- Telescope
	{ "nvim-telescope/telescope.nvim" },
	{ "nvim-lua/popup.nvim" },
	{ "nvim-telescope/telescope-media-files.nvim" },

	-- File Manager
	{ "kyazdani42/nvim-web-devicons" },
	{ "kyazdani42/nvim-tree.lua" },

	-- Autotag
	{ "windwp/nvim-autopairs" },
	{ "windwp/nvim-ts-autotag" },
	{ "HiPhish/rainbow-delimiters.nvim" },

	-- CSV Support
	{ "chrisbra/csv.vim" },

	-- Shortcut Helper
	{ "folke/which-key.nvim" },

	-- RestAPI
	{ "NTBBloodbath/rest.nvim" },
	{ "nvim-lua/plenary.nvim" },

	-- Markdown Support
	{ "iamcco/markdown-preview.nvim" },
	{ "rderik/vim-markdown-toc" },

	-- Pretty Fold
	{ "kevinhwang91/promise-async" },
	{ "kevinhwang91/nvim-ufo" },

	-- Laravel
	{ "jwalton512/vim-blade" },

	-- Pretty Diagnostic
	{ "folke/trouble.nvim" },

	-- Other
	{ "rking/ag.vim" },
	{ "akinsho/toggleterm.nvim" },
}

return M

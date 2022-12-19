local setup = require("utils").plugins
local gheight = vim.api.nvim_list_uis()[1].height
local gwidth = vim.api.nvim_list_uis()[1].width
local width = 130
local height = 130

setup("nvim-tree", {
	disable_netrw = false,
	hijack_netrw = true,
	open_on_setup = true,
	ignore_buffer_on_setup = false,
	ignore_ft_on_setup = {},
	auto_reload_on_write = true,
	open_on_tab = true,
	hijack_cursor = false,
	update_cwd = false,
	hijack_unnamed_buffer_when_opening = false,
	live_filter = {
		prefix = "[SEARCH]: ",
		always_show_folders = false,
	},
	hijack_directories = {
		enable = true,
		auto_open = true,
	},
	diagnostics = {
		enable = true,
		icons = {
			hint = "",
			info = "",
			warning = "",
			error = "",
		},
	},
	update_focused_file = {
		enable = true,
	},
	filters = {
		dotfiles = false,
	},
	git = {
		enable = true,
		ignore = false,
		timeout = 500,
	},
	view = {
		hide_root_folder = true,
		width = width,
		side = "center",
		preserve_window_proportions = true,
		mappings = {
			custom_only = false,
			list = {},
		},
		adaptive_size = true,
		centralize_selection = true,
		number = false,
		relativenumber = false,
		signcolumn = "yes",
		float = {
			enable = true,
			quit_on_focus_loss = true,
			open_win_config = {
				width = width,
				height = height,
				relative = "editor",
				border = "rounded",
				col = math.floor((gwidth - width) * 0.5),
				row = math.floor((gheight - height) * 0.5),
			},
		},
	},
	trash = {
		cmd = "trash",
		require_confirm = true,
	},
	actions = {
		change_dir = {
			enable = true,
			global = false,
		},
		open_file = {
			quit_on_open = false,
			resize_window = true,
			window_picker = {
				enable = true,
				chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890",
				exclude = {
					filetype = { "notify", "packer", "qf", "diff", "fugitive", "fugitiveblame" },
					buftype = { "nofile", "terminal", "help" },
				},
			},
		},
	},
	log = {
		enable = false,
		truncate = false,
		types = {
			all = false,
			config = false,
			git = false,
		},
	},
	renderer = {
		add_trailing = false,
		group_empty = false,
		highlight_git = false,
		full_name = false,
		highlight_opened_files = "none",
		root_folder_label = ":~:s?$?/..?",
		indent_width = 2,
		indent_markers = {
			enable = true,
			inline_arrows = true,
			icons = {
				corner = "└",
				edge = "│",
				item = "│",
				bottom = "─",
				none = " ",
			},
		},
	},
})

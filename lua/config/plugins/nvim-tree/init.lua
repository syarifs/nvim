local setup = require('utils').plugins

setup('nvim-tree', {
		disable_netrw        = false,
		hijack_netrw         = true,
		open_on_setup        = true,
		ignore_buffer_on_setup = false,
		ignore_ft_on_setup   = {},
		auto_reload_on_write = true,
		open_on_tab          = true,
		hijack_cursor        = false,
		update_cwd           = false,
		hijack_unnamed_buffer_when_opening = false,
		hijack_directories   = {
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
				}
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
				width = 30,
				height = 30,
				hide_root_folder = true,
				side = 'left',
				preserve_window_proportions = true,
				mappings = {
						custom_only = false,
						list = {}
				},
				number = false,
				relativenumber = false,
				signcolumn = "yes"
		},
		trash = {
				cmd = "trash",
				require_confirm = true
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
										filetype = { "notify", "packer", "qf", "diff", "fugitive", "fugitiveblame", },
										buftype  = { "nofile", "terminal", "help", },
								}
						}
				}
		},
		log = {
				enable = false,
				truncate = false,
				types = {
						all = false,
						config = false,
						git = false,
				},
		}
})

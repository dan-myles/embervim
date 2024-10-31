return {
	"nvim-neo-tree/neo-tree.nvim",
	lazy = false,
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	keys = {
		{
			"-",
			function()
				if vim.bo.filetype == "neo-tree" then
					vim.api.nvim_command("wincmd p")
				else
					vim.api.nvim_command("Neotree reveal")
				end
			end,
			desc = "Open Neo-tree",
		},
		{
			"<leader>e",
			"<CMD>Neotree toggle<CR>",
			desc = "Toggle neotree",
		},
	},
	init = function()
		vim.g.loaded_netrw = 1
		vim.g.loaded_netrwPlugin = 1
	end,
	opts = {
		close_if_last_window = true,
		sources = { "filesystem", "buffers", "git_status" },
		open_files_do_not_replace_types = { "terminal", "Trouble", "trouble", "qf", "Outline" },
		filesystem = {
			follow_current_file = { enabled = true },
			use_libuv_file_watcher = true,
		},
		window = {
      width = 32,
			mappings = {
				["l"] = "open",
				["h"] = "close_node",
				["<space>"] = "none",
				["/"] = "none",
			},
		},
		default_component_configs = {
			indent = {
				with_expanders = true, -- if nil and file nesting is enabled, will enable expanders
				expander_collapsed = "",
				expander_expanded = "",
				expander_highlight = "NeoTreeExpander",
			},
			git_status = {
				symbols = {
					unstaged = "󰄱",
					staged = "󰱒",
				},
			},
		},
	},
}

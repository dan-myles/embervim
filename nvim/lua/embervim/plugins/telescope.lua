return {
	-- Telescope
	{
		"nvim-telescope/telescope.nvim",
		lazy = true,
		keys = {
			{ "<leader>pf", ":Telescope find_files<CR>", desc = "Search file" },
			{ "<leader>ps", ":Telescope live_grep<CR>", desc = "Search Word in Current Buffer" },
			{ "<leader>pr", ":Telescope oldfiles<CR>", desc = "Recent Files" },
			{ "<leader>gd", ":Telescope git_files<CR>", desc = "Git Files" },
			{ "<leader>gb", ":Telescope git_branches<CR>", desc = "Git Branches" },
			{ "<leader>ga", ":Telescope git_commits<CR>", desc = "Git Commits" },

			{ "<leader>bf", ":Telescope buffers<CR>", desc = "Search Buffers" },
			{ "<leader>br", ":Telescope oldfiles<CR>", desc = "Recent Buffers" },
			{ "<leader>hk", ":Telescope keymaps<CR>", desc = "Keybinds" },
			{ "<leader>ht", ":Telescope colorscheme<CR>", desc = "Themes" },
			{ 
				"<leader>pw", 
				":lua require('telescope.builtin').current_buffer_fuzzy_find({ previewer=false, layout_config = { height = 20, width = 65, }, })<CR>",
				desc = "Search Word in Current Buffer" 
			},
			{ 
				"<leader>hp", 
				":lua require('telescope.builtin').commands({ previewer=false, layout_config = { height = 20, width = 100, }, })<CR>",
				desc = "Command Palette"
			},
			{ 
				"<C-p>",
				function()
					local opts = {} -- define here if you want to define something
					vim.fn.system('git rev-parse --is-inside-work-tree')
					if vim.v.shell_error == 0 then
						require "telescope.builtin".git_files(opts)
					else
						require "telescope.builtin".find_files(opts)
					end
				end,
				desc = "Find Files"
			},


		},
		tag = "0.1.1",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			require("telescope").setup({})
		end
	},
}

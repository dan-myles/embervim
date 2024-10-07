return {
	-- Telescope
	"nvim-telescope/telescope.nvim",
	dependencies = { "nvim-lua/plenary.nvim" },
	lazy = false,
	keys = {
		{ "<leader>pf", "<CMD>Telescope find_files<CR>", desc = "Search file" },
		{ "<leader>ps", "<CMD>Telescope live_grep<CR>", desc = "Search Word in Current Buffer" },
		{ "<leader>pr", "<CMD>Telescope oldfiles<CR>", desc = "Recent Files" },
		{ "<leader>gd", "<CMD>Telescope git_files<CR>", desc = "Git Files" },
		{ "<leader>gb", "<CMD>Telescope git_branches<CR>", desc = "Git Branches" },
		{ "<leader>ga", "<CMD>Telescope git_commits<CR>", desc = "Git Commits" },
		{ "<leader>bf", "<CMD>Telescope buffers<CR>", desc = "Search Buffers" },
		{ "<leader>br", "<CMD>Telescope oldfiles<CR>", desc = "Recent Buffers" },
		{ "<leader>hk", "<CMD>Telescope keymaps<CR>", desc = "Keybinds" },
		{ "<leader>ht", "<CMD>Telescope colorscheme<CR>", desc = "Themes" },
		{
			"<leader>pw",
			function()
				require("telescope.builtin").current_buffer_fuzzy_find({
					previewer = false,
					layout_config = { height = 20, width = 65 },
				})
			end,
			desc = "Search Word in Current Buffer",
		},
		{
			"<leader>hp",
			function()
				require("telescope.builtin").commands({
					previewer = false,
					layout_config = { height = 20, width = 100 },
				})
			end,
			desc = "Command Palette",
		},
		{
			"<C-p>",
			function()
				require("telescope.builtin").find_files()
			end,
			desc = "Find Files",
		},
	},
	config = function()
		require("telescope").setup({})
	end,
}

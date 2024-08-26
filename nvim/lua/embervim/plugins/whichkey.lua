return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	config = function()
		require("which-key").setup({
			notify = false,
			icons = {
				breadcrumb = "»", -- symbol used in the command line area that shows your active key combo
				separator = "", -- symbol used between a key and it's label
				group = "+", -- symbol prepended to a group
			},
			plugins = {
				presets = {
					operators = false,
					motions = false,
					text_objects = false,
					windows = false,
					z = false,
					g = false,
				},
			},
		})

		local wk = require("which-key")
		wk.add({
			{ "<leader>b", group = "Buffer" },
			{ "<leader>g", group = "Git" },
			{ "<leader>h", group = "Help" },
			{ "<leader>l", group = "LSP" },
			{ "<leader>m", group = "Markdown" },
			{ "<leader>p", group = "File" },
		})
	end,
}

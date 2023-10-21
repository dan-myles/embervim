return {
	{
		"folke/which-key.nvim",
		event = "VeryLazy",
		init = function()
			vim.o.timeout = true
			vim.o.timeoutlen = 2000
		end,
		config = function()
			require("which-key").setup {
				window = {
					border = "single",
				},
				icons = {
					breadcrumb = "»", -- symbol used in the command line area that shows your active key combo
					separator = "", -- symbol used between a key and it's label
					group = "+",      -- symbol prepended to a group
				},
			}

			require("which-key").register({
				["<leader>p"] = { name = "+File" },
				["<leader>g"] = { name = "+Git" },
				["<leader>m"] = { name = "+Markdown" },
				["<leader>l"] = { name = "+LSP" }
			})
		end
	}
}

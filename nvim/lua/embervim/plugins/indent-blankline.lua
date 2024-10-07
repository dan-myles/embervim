return {
	{
		"lukas-reineke/indent-blankline.nvim",
		lazy = true,
		event = { "BufWinEnter" },
		config = function()
			vim.api.nvim_command("highlight IblScope guifg=#3B4252")
			require("ibl").setup({
				indent = { char = "▏" },
				scope = { enabled = false },
				exclude = {
					filetypes = {
						"help",
						"alpha",
						"dashboard",
						"neo-tree",
						"Trouble",
						"trouble",
						"lazy",
						"mason",
						"notify",
						"toggleterm",
						"lazyterm",
					},
				},
			})
		end,
	},

	{
		"echasnovski/mini.indentscope",
		version = false,
		lazy = true,
		event = { "BufWinEnter" },
		opts = {
			symbol = "▏",
			options = { try_as_border = true },
		},
		init = function()
			vim.api.nvim_create_autocmd("FileType", {
				pattern = {
					"help",
					"alpha",
					"dashboard",
					"neo-tree",
					"Trouble",
					"trouble",
					"lazy",
					"mason",
					"notify",
					"toggleterm",
					"lazyterm",
				},
				callback = function()
					vim.b.miniindentscope_disable = true
				end,
			})
		end,
	},
}

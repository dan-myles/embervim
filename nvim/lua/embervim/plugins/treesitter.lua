return {
	-- Treesitter
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		lazy = false,
		config = function() 
			require("nvim-treesitter.configs").setup({
				ensure_installed = {
					"vim",
					"lua",
					"markdown",
					"markdown_inline",
					"typescript",
					"javascript",
					"cpp",
				},

				auto_install = true,
				highlight = { enable = true, disable = {} },
				indent = { enable = true },
				incremental_selection = {
					enable = true,
					keymaps = {
						init_selection = "<CR>",
						node_incremental = "<CR>",
						scope_incremental = "<TAB>",
						node_decremental = "<S-Tab>"
					}
				},
				textobjects = {
					move = {
						enable = true,
						set_jumps = true,
						goto_next_start = {
							["]r"] = "@function.outer",
							["]]"] = "@class.outer"
						},
						goto_next_end = {
							["]M"] = "@function.outer",
							["]["] = "@class.outer"
						},
						goto_previous_start = {
							["[r"] = "@function.outer",
							["[["] = "@class.outer"
						},
						goto_previous_end = {
							["[M"] = "@function.outer",
							["[]"] = "@class.outer"
						}
					}
				}
			})
		end
	},
	
	-- Context 
	{
		"nvim-treesitter/nvim-treesitter-context",
		lazy = false
	}
}

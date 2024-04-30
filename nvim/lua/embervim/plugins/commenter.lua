return {
	-- Commenter plugin
	{
		"numToStr/Comment.nvim",
		lazy = true,
		event = "BufRead",
		config = function()
			require("Comment").setup({
				mappings = {
					basic = true,
					extra = true,
				},
				opleader = {
					line = "gc",
					block = "gb",
				},
				pre_hook = require("ts_context_commentstring.integrations.comment_nvim").create_pre_hook(),
			})
		end,
	},

	-- Correct commenting in TSX/JSX files
	{
		"JoosepAlviste/nvim-ts-context-commentstring",
		lazy = true,
		opts = {
			enable_autocmd = false,
		},
	},
}

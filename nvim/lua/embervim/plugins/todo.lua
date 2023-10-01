return {
  -- Show TODO Comments & More!
  {
    "folke/todo-comments.nvim",
		lazy = true,
		event = { "BufReadPost", "BufNewFile" },
    dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			require("todo-comments").setup({
				signs = true,
			})
		end
	},
}

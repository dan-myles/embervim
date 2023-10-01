return {
	{ 
		"numToStr/Comment.nvim" ,
		lazy = true,
		keys = {
			{ "<leader>/", "<cmd>lua require(\"Comment.api\").toggle.linewise.current()<CR>", desc = "Comment Line" },
			{ "<leader>/", "<esc><cmd>lua require(\"Comment.api\").toggle.linewise(vim.fn.visualmode())<cr>", mode = "v", desc = "Comment Block" },
		},
		config = function()
			require("Comment").setup({
				mappings = {
					basic = false,
					extra = false,
				}
			})
		end
	}
}

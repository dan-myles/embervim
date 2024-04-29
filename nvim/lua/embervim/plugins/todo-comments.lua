return {
	"folke/todo-comments.nvim",
	event = { "BufRead" },
	dependencies = { "nvim-lua/plenary.nvim" },
	keys = {
		{ "]t", "<cmd>lua require('todo-comments').jump_next()<CR>", desc = "Next todo comment" },
		{ "[t", "<cmd>lua require('todo-comments').jump_prev()<CR>", desc = "Previous todo comment" },
	},
	opts = {
		-- your configuration comes here
		-- or leave it empty to use the default settings
		-- refer to the configuration section below
	},
}

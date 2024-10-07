return {
	"jiaoshijie/undotree",
	dependencies = "nvim-lua/plenary.nvim",
	keys = { -- load the plugin only when using it's keybinding:
		{
			"<leader>u",
			function()
				require("undotree").toggle()
			end,
			desc = "Toggle Undo Tree",
		},
	},
	config = function()
		require("undotree").setup({
			float_diff = false,
		})
	end,
}

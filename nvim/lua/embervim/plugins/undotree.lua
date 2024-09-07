return {
	"jiaoshijie/undotree",
	dependencies = "nvim-lua/plenary.nvim",
	config = true,
	keys = { -- load the plugin only when using it's keybinding:
		{
			"<leader>u",
			function()
				require("undotree").toggle()
			end,
			desc = "Toggle Undo Tree",
		},
	},
}

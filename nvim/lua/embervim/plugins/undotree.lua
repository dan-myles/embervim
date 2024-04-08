return {
	-- Undo Tree
	{
		"mbbill/undotree",
		lazy = true,
		keys = {
			{ "<leader>u", vim.cmd.UndotreeToggle, desc = "View Undo Tree"},
		}
	}
}

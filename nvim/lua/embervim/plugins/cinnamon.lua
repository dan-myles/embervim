return {
	{
		"declancm/cinnamon.nvim",
		lazy = true,
		event = { "BufWinEnter" },
		config = function()
			require("cinnamon").setup({
        default_delay = 4,
				default_keymaps = true,
				extra_keymaps = true,
				extended_keymaps = true,
				always_scroll = true,
				centered = true,
			})
		end
	}
}

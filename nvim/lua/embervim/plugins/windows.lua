return {
	-- Window Manager (Auto-Resize)
	"danlikestocode/windows.nvim",
	lazy = true,
	event = { "WinNew" },
	keys = {
		{ "<C-w>f", "<cmd>WindowsMaximize<CR>", desc = "Fullscreen Window" },
		{ "<C-w>_", "<cmd>WindowsMaximizeVertically<CR>", desc = "Maximize Window Vertically" },
		{ "<C-w>|", "<cmd>WindowsMaximizeHorizontally<CR>", desc = "Maximize Window Horizontally" },
		{ "<C-w>=", "<cmd>WindowsEqualize<CR>", desc = "Equalize Windows" },
	},
	dependencies = {
		"anuvyklack/middleclass",
		"anuvyklack/animation.nvim",
	},
	config = function()
		require("windows").setup({
			ignore = {
				filetype = {
					"lspsagaoutline",
				},
			},
			animation = {
				enable = true,
				fps = 60,
			},
		})
	end,
}

return {
	-- Window Manager (Auto-Resize)
	"danlikestocode/windows.nvim",
	lazy = true,
	event = { "WinNew" },
	keys = {
		{ "<C-w>f", "<CMD>WindowsMaximize<CR>", desc = "Fullscreen Window" },
		{ "<C-w>_", "<CMD>WindowsMaximizeVertically<CR>", desc = "Maximize Window Vertically" },
		{ "<C-w>|", "<CMD>WindowsMaximizeHorizontally<CR>", desc = "Maximize Window Horizontally" },
		{ "<C-w>=", "<CMD>WindowsEqualize<CR>", desc = "Equalize Windows" },
	},
	dependencies = {
		"anuvyklack/middleclass",
		"anuvyklack/animation.nvim",
	},
	config = function()
		require("windows").setup({
			ignore = {
				filetype = {
					"CHADTree",
					"sagaoutline",
					"Outline",
				},
			},
			animation = {
				enable = true,
				fps = 120,
			},
		})
	end,
}

return {
	"tummetott/reticle.nvim",
	lazy = true,
	event = "VimEnter",
	config = function()
		require("reticle").setup({
			ignore = {
				cursorline = {
					"neo-tree",
				},
			},
		})
	end,
}

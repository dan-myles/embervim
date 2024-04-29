return {
	"michaelrommel/nvim-silicon",
	lazy = true,
	keys = {
		{ "<leader>s", "<cmd>Silicon<CR>", desc = "Screenshot code (file)" },
		{ "<leader>s", ":Silicon<CR>", desc = "Screenshot code (block)", mode = "v" },
	},
	cmd = "Silicon",
	config = function()
		require("silicon").setup({
			to_clipboard = true,
			font = "CaskaydiaCove Nerd Font",
		})
	end,
}

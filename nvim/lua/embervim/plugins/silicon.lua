return {
	"michaelrommel/nvim-silicon",
	lazy = true,
	branch = "luashooter",
	keys = {
		{
			"<leader>s",
			function()
				require("nvim-silicon").shoot()
			end,
			desc = "Screenshot code (file)",
			mode = { "n", "v" },
		},
	},
	config = function()
		require("nvim-silicon").setup({
			to_clipboard = true,
			font = "CaskaydiaCove Nerd Font",
		})
	end,
}

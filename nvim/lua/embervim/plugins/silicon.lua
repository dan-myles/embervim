return {
	"michaelrommel/nvim-silicon",
	lazy = true,
	keys = {
		{
			"<leader>s",
			function()
				require("nvim-silicon").clip()
			end,
			desc = "Screenshot code (file)",
			mode = { "n", "v" },
		},
	},
	config = function()
		require("nvim-silicon").setup({
			to_clipboard = true,
			wslclipboard = "auto",
			wslclipboardcopy = "delete",
		})
	end,
}

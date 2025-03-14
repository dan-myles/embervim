return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	keys = {
		{
			"<leader>?",
			function()
				require("which-key").show({ global = false })
			end,
			desc = "Buffer Local Keymaps (which-key)",
		},
	},
	config = function()
		require("which-key").setup({
			preset = "classic",
			icons = {
				mappings = false,
			},
		})

		require("which-key").add({
			{ "<leader>b", group = "+Buffer" },
			{ "<leader>g", group = "+Git" },
			{ "<leader>h", group = "+Home" },
			{ "<leader>l", group = "+LSP" },
			{ "<leader>p", group = "+Project" },
      { "<leader>m", group = "+Markdown" },
		})
	end,
}

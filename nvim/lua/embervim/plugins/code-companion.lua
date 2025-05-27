return {
	"olimorris/codecompanion.nvim",
	lazy = false,
  keys = {
    { "<leader>ai", "<CMD>CodeCompanionChat Toggle<CR>" , desc = "Code Companion Inline" },
    { "<leader>al", ":<C-u>'<,'>CodeCompanion ", desc = "Code Companion Inline", mode = { "v" } }
  },
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-treesitter/nvim-treesitter",
		"github/copilot.vim",
	},
	config = function()
		require("codecompanion").setup({
			strategies = {
				chat = {
					adapter = "copilot",
				},
				inline = {
					adapter = "copilot",
				},
			},
			adapters = {
				copilot = function()
					return require("codecompanion.adapters").extend("copilot", {
						schema = {
							model = {
								default = "claude-3.7-sonnet",
							},
						},
					})
				end,
			},
      opts = {
        log_level = "DEBUG",
      }
		})
	end,
}

return {
	"stevearc/conform.nvim",
	lazy = true,
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		require("conform").setup({
			format_after_save = {
				lsp_fallback = false,
			},
			formatters_by_ft = {
				lua = { "stylua" },
				go = { lsp_format = "first", "goimports", "golines" },
				rust = { lsp_format = "first" },
				typescript = { "prettierd", "eslint_d" },
				typescriptreact = { "prettierd", "eslint_d" },
				json = { "fixjson" },
			},
		})
	end,
}

return {
	"stevearc/conform.nvim",
	lazy = true,
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		require("conform").setup({
			formatters_by_ft = {
				go = { lsp_format = "first", "goimports" },
				rust = { lsp_format = "first" },
				typescript = { "prettierd", "eslint_d" },
				typescriptreact = { "prettierd", "eslint_d" },
				lua = { "stylua" },
				prisma = { lsp_format = "first" },
				json = { "fixjson" },
			},
		})
	end,
}

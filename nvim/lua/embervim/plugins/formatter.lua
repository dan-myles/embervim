return {
	"stevearc/conform.nvim",
	lazy = true,
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		require("conform").setup({
			formatters_by_ft = {
				go = { lsp_format = "first", "goimports" },
				rust = { lsp_format = "first" },
				typescript = { "prettier", "eslint_d" },
				typescriptreact = { "prettier", "eslint_d" },
        javascript = { "prettier"},
        javascriptreact = { "prettier"},
				lua = { "stylua" },
				prisma = { lsp_format = "first" },
				json = { "fixjson" },
        markdown = { "prettierd" },
			},
		})
	end,
}

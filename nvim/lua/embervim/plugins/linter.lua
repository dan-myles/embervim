return {
	"mfussenegger/nvim-lint",
	lazy = true,
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local lint = require("lint")

		lint.linters_by_ft = {
			-- typescript = { "eslint_d" },
			-- typescriptreact = { "eslint_d" },
			-- javascript = { "eslint_d" },
			-- javascriptreact = { "eslint_d" },
			-- go = { "golangcilint" },
		}
	end,
}

return {
	"folke/trouble.nvim",
	event = { "BufReadPre" },
	dependencies = { "nvim-tree/nvim-web-devicons" },
	keys = {
		{
			"<C-t>",
			function()
				require("trouble").toggle()
			end,
			desc = "Toggle trouble",
		},
		{
			"<C-j>",
			function()
				require("trouble").next({ jump = true })
			end,
			desc = "Next trouble item",
		},
		{
			"<C-k>",
			function()
				require("trouble").previous({ jump = true })
			end,
			desc = "Next trouble item",
		},
	},
	opts = {
		icons = false,
		fold_open = "v", -- icon used for open folds
		fold_closed = ">", -- icon used for closed folds
		indent_lines = false, -- add an indent guide below the fold icons
		signs = {
			-- icons / text used for a diagnostic
			error = "error",
			warning = "warn",
			hint = "hint",
			information = "info",
		},
		use_diagnostic_signs = false, -- enabling this will use the signs defined in your lsp client
		action_keys = {
			open_tab = { "<C-9>" },
		},
	},
}

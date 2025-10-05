return {
	"folke/trouble.nvim",
	opts = {},
	cmd = "Trouble",
	keys = {
		-- {
		-- 	"<C-r>",
		-- 	"<CMD>Trouble diagnostics toggle focus=true<CR>",
		-- 	desc = "Diagnostics (Trouble)",
		-- },
		-- {
		--   "<leader>xX",
		--   "<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
		--   desc = "Buffer Diagnostics (Trouble)",
		-- },
		-- {
		--   "<leader>cs",
		--   "<cmd>Trouble symbols toggle focus=false<cr>",
		--   desc = "Symbols (Trouble)",
		-- },
		-- {
		--   "<leader>cl",
		--   "<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
		--   desc = "LSP Definitions / references / ... (Trouble)",
		-- },
		-- {
		--   "<leader>xL",
		--   "<cmd>Trouble loclist toggle<cr>",
		--   desc = "Location List (Trouble)",
		-- },
		{
			"<C-t>",
			"<CMD>Trouble qflist toggle focus=true<CR>",
			desc = "Quickfix List (Trouble)",
		},
		{
			"]q",
			function()
				require("trouble").next({ skip_groups = true, jump = true })
			end,
			desc = "Next Trouble Item",
		},
		{
			"[q",
			function()
				require("trouble").prev({ skip_groups = true, jump = true })
			end,
			desc = "Previous Trouble Item",
		},
	},
}

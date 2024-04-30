return {
	"toppair/peek.nvim",
	lazy = true,
	ft = { "markdown" },
	keys = {
		{ "<leader>mp", "<CMD>PeekOpen<CR>", desc = "Start Preview" },
		{ "<leader>ms", "<CMD>PeekClose<CR>", desc = "Stop Preview" },
	},
	build = "deno task --quiet build:fast",
	config = function()
		require("peek").setup()
		vim.api.nvim_create_user_command("PeekOpen", require("peek").open, {})
		vim.api.nvim_create_user_command("PeekClose", require("peek").close, {})
	end,
}

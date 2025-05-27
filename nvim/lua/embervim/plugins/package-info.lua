return {
	"vuki656/package-info.nvim",
	lazy = false,
	config = function()
		require("package-info").setup({
			package_manager = "pnpm",
		})

		vim.keymap.set(
			{ "n" },
			"<LEADER>ns",
			require("package-info").show,
			{ silent = true, noremap = true, desc = "Show package.json info" }
		)
	end,
}

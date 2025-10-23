return {
	"supermaven-inc/supermaven-nvim",
	config = function()
		require("supermaven-nvim").setup({
			keymaps = {
				-- accept_suggestion = "<S-Tab>",
				accept_suggestion = "<Tab>",
			},
		})
	end,
}

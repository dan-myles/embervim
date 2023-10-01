return {
	{ 
		"voldikss/vim-floaterm",
		lazy = true,
		keys = {
			{ 
				"<leader>gs", 
				"<cmd>FloatermNew --autoclose=2 --name=LazyGit --title=LazyGit --width=0.9 --height=0.9 --position=center lazygit<CR>",
				desc = "LazyGit"
			}
		},
	}
}

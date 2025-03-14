-- This is the last file required and sets the colorscheme :P
vim.cmd([[colorscheme catppuccin]])

-- Add filetype for markdown
vim.filetype.add({
	extension = {
		mdx = "markdown",
	},
})

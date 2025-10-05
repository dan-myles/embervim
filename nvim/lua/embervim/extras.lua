-- This is the last file required and sets the colorscheme :P
vim.cmd([[colorscheme cyberdream]])

-- Add filetype for markdown
vim.filetype.add({
	extension = {
		mdx = "markdown",
		json = "jsonc",
		mdc = "markdown",
	},
	pattern = {
		["%.env%.[%w_.-]+"] = "sh",
	},
})

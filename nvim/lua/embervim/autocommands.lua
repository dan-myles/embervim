-- Global Auto Commands to be defined here
-- Filetype specific autocommands go in plugin/*.lua
local autocmd = vim.api.nvim_create_autocmd
local augroup = vim.api.nvim_create_augroup
local general = augroup("General Settings", { clear = true })

-- Lint on Change
autocmd({ "TextChanged", "BufWritePost" }, {
	callback = function()
		require("lint").try_lint()
	end,
	group = general,
	desc = "Lint on File Save/Text Change",
})

-- Format on Save
autocmd("BufWritePost", {
	pattern = "*",
	group = general,
	desc = "Format & clean on save",
	callback = function(args)
		require("conform").format({ bufnr = args.buf })
	end,
})

-- Remove trailing whitespace
autocmd("BufWritePre", {
	pattern = { "*" },
	group = general,
	desc = "Remove trailing whitespace on save",
	command = [[%s/\s\+$//e]],
})

-- Highlight on yank (with timeout)
autocmd("TextYankPost", {
	pattern = { "*" },
	group = general,
	desc = "Highlight on yank",
	command = [[silent! lua vim.highlight.on_yank({higroup="IncSearch", timeout=200})]],
})

-- Global Auto Commands to be defined here
-- Filetype specific autocommands go in plugin/*.lua
local autocmd = vim.api.nvim_create_autocmd
local augroup = vim.api.nvim_create_augroup
local general = augroup("General Settings", { clear = true })

-- Disable new line comment
-- autocmd("BufEnter", {
--   callback = function()
--     vim.opt.formatoptions:remove { "c", "r", "o" }
--   end,
--   group = general,
--   desc = "Disable New Line Comment",
-- })

-- Lint
autocmd({ "TextChanged", "BufWritePost" }, {
	callback = function()
		require("lint").try_lint()
	end,
	group = general,
	desc = "Lint on File Save/Text Change",
})

-- Modify winbar in netrw
autocmd("FileType", {
	pattern = "oil",
	callback = function()
		vim.opt_local.winbar = "Oil"
		vim.opt_local.fillchars:append({ eob = " " })
		vim.opt_local.colorcolumn = ""
	end,
	group = general,
	desc = "Disable Winbar in NetRW",
})

-- Remove trailing whitespace on save
autocmd("BufWritePre", {
	pattern = { "*" },
	command = [[%s/\s\+$//e]],
	group = general,
	desc = "Remove trailing whitespace on save",
})

-- Highlight on yank (with timeout)
autocmd("TextYankPost", {
	pattern = { "*" },
	command = [[silent! lua vim.highlight.on_yank({higroup="IncSearch", timeout=200})]],
	group = general,
	desc = "Highlight on yank",
})

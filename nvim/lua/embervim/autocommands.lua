-- Global Auto Commands to be defined here
-- Filetype specific autocommands go in plugin/*.lua
local fn = vim.fn
local autocmd = vim.api.nvim_create_autocmd
local augroup = vim.api.nvim_create_augroup
local general = augroup("General Settings", { clear = true })

--autocmd("BufEnter", {
--  callback = function()
--    vim.opt.formatoptions:remove { "c", "r", "o" }
--  end,
--  group = general,
--  desc = "Disable New Line Comment",
--})

autocmd("VimEnter", {
	callback = function()
		vim.cmd "Neotree show"
	end,
	group = general,
	desc = "Open Neotree on Startup"
})

autocmd("BufWritePost", {
	callback = function()
		require("lint").try_lint()
	end,
	group = general,
	desc = "Lint on File Save"
})

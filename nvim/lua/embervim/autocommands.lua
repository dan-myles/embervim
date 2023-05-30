-- Global Auto Commands to be defined here
-- Filetype specific autocommands go in plugin/*.lua
local fn = vim.fn
local autocmd = vim.api.nvim_create_autocmd
local augroup = vim.api.nvim_create_augroup
local general = augroup("General Settings", { clear = true })

autocmd("BufEnter", {
  callback = function()
    vim.opt.formatoptions:remove { "c", "r", "o" }
  end,
  group = general,
  desc = "Disable New Line Comment",
})

-- autocmd("TermLeave", {
--   callback = function()
--     vim.cmd("Neotree show left")
--   end,
--   group = general,
--   desc = "Update neotree on terminal exit"
-- })

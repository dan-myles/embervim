-- Global Auto Commands to be defined here
-- Filetype specific autocommands go in plugin/*.lua
local autocmd = vim.api.nvim_create_autocmd
local augroup = vim.api.nvim_create_augroup
local general = augroup("General Settings", { clear = true })

-- Disable new line comment
autocmd("BufEnter", {
  callback = function()
    vim.opt.formatoptions:remove { "c", "r", "o" }
  end,
  group = general,
  desc = "Disable New Line Comment",
})

-- Lint
autocmd({"TextChanged", "BufWritePost"}, {
  callback = function()
    require("lint").try_lint()
  end,
  group = general,
  desc = "Lint on File Save/Text Change",
})

-- Disable winbar in netrw
autocmd("FileType", {
  callback = function()
    vim.opt_local.winbar = "netrw"
    vim.opt_local.fillchars:append { eob = " " }
    vim.opt_local.colorcolumn = ""
  end,
  pattern = "netrw",
  group = general,
  desc = "Disable Winbar in NetRW",
})

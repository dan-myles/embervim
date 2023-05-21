-- Global Auto Commands to be defined here
-- Filetype specific autocommands go in plugin/*.lua
local fn = vim.fn
local autocmd = vim.api.nvim_create_autocmd
local augroup = vim.api.nvim_create_augroup
local general = augroup("General Settings", { clear = true })

-- Getting rid of newline comments
autocmd("BufEnter", {
  callback = function()
    vim.opt.formatoptions:remove { "c", "r", "o" }
  end,
  group = general,
  desc = "Disable New Line Comment",
})

-- Keep nvim tree open always
autocmd("BufWinEnter", {
  callback = function(data)
    local real_file = vim.fn.filereadable(data.file) == 1

    if not real_file then
      return
    end

    if vim.bo.filetype == "alpha" then
      return
    end

    if vim.bo.filetype == "Neotree" then
      return
    end

    vim.cmd("Neotree show")
  end,
  group = general,
  desc = "Open NvimTree on open file",
})

autocmd("TermLeave", {
  callback = function()
    vim.cmd("Neotree show")
  end,
  group = general,
  desc = "Update neotree on terminal exit"
})

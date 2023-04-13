-- This file contains general settings for Neovim
-- All of these are set using the global vim.opt object
-- See :help vim.opt for more information

-- General
vim.g.mapleader = " "
vim.opt.smartindent = true
vim.opt.wrap = false
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undofile = true
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.termguicolors = true
vim.opt.cmdheight = 0

-- Relative Numbers
vim.opt.nu = true
vim.opt.relativenumber = true

-- Tab Spacing
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- Scroll & Sign Column
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

-- Time
vim.opt.updatetime = 50
vim.opt.colorcolumn = "80"
vim.opt.cursorline = false

-- NetRW
vim.g.netrw_banner = 0
vim.g.netrw_browse_split = 0
vim.g.netrw_winsize = 25

-- Fold Settings
vim.o.foldenable = false

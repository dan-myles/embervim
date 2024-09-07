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
vim.opt.laststatus = 3

-- Relative Numbers
vim.opt.nu = true
vim.opt.relativenumber = true

-- Tab Spacing
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

-- Scroll & Sign Column
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

-- Time
vim.opt.updatetime = 50
-- vim.opt.colorcolumn = "100"
vim.opt.cursorline = true

-- NetRW
vim.g.netrw_banner = 1
vim.g.netrw_browse_split = 0
vim.g.netrw_winsize = 25
vim.g.netrw_liststyle = 0
vim.g.netrw_bufsettings = "noma nomod rnu nobl nowrap ro"

-- Fold Settings
vim.o.foldenable = false

-- Window Settings
vim.o.winwidth = 10
vim.o.winminwidth = 10
vim.o.equalalways = false
vim.o.guifont = "CaskaydiaCove Nerd Font:h15"
vim.opt.winbar = "%{expand('%:.')} %m"

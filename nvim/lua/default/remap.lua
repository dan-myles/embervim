-- Map Leader
vim.g.mapleader = " "

-- Here we are using the plugin "WhichKey" to register keybinds with specified
-- prefixes. This is a great way to keep your keybinds organized and easy to
-- read.
local wk = require("which-key")

-- Normal Mode Keybinds
wk.register({
    ["H"] = { "gT", "Next Tab" },
    ["L"] = { "gt", "Previous Tab" },
    ["J"] = { "mzJ`z", "Delete line above" },
    ["<C-d>"] = {"<C-d>zz", "Down page while centered"},
    ["<C-u>"] = {"<C-u>zz", "Up page while centered"},

    ["<leader>h"] = { ":Alpha<CR>", "Home" },
    ["<leader>f"] = { vim.lsp.buf.format, "Format" },
    ["<leader>b"] = { ":Telescope buffers<CR>", "Buffers" },
    ["<leader>s"] = { [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], "Find and replace"},
    ["<leader>/"] = { ":lua require(\"Comment.api\").toggle.linewise.current()<CR>", "Comment" },

    ["<leader>p"] = { name = "+Project" },
    ["<leader>pp"] = { ":Telescope projects<cr>", "Projects" },
    ["<leader>pv"] = { ":Ex<CR>", "File Explorer"},
    ["<leader>pf"] = { ":Telescope find_files<CR>", "Find File" },

    ["<leader>g"] = { name = "+Git" },
    ["<leader>gf"] = { ":Telescope git_files<CR>", "Git Files" },
    ["<leader>gs"] = { vim.cmd.Git, "Git Status"},
    
}, { mode = "n" })

-- Visual Mode Keybinds
wk.register({
    ["<leader>y"] = { "\"+y", "Copy to System Clipboard" },
    ["<leader>/"] = { "<esc><cmd>lua require(\"Comment.api\").toggle.linewise(vim.fn.visualmode())<cr>", "comment" },
    ["J"] = { ":m '>+1<CR>gv=gv", "Move Down" },
    ["K"] = { ":m '<-2<CR>gv=gv", "Move Up" },
}, { mode = "v" })

-- Get rid of this evil garbage
vim.keymap.set("n", "Q", "<nop>")



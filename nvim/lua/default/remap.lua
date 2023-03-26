-- Map Leader
vim.g.mapleader = " "

-- Here we are using the plugin "WhichKey" to register keybinds with specified
-- prefixes. This is a great way to keep your keybinds organized and easy to
-- read.
local wk = require("which-key")

-- Normal Mode Keybinds
wk.register({
    -- General Keybinds
    ["H"] = { "gT", "Next Tab" },
    ["L"] = { "gt", "Previous Tab" },
    ["J"] = { "mzJ`z", "Delete line above" },
    ["<C-d>"] = {"<C-d>zz", "Down page while centered"},
    ["<C-u>"] = {"<C-u>zz", "Up page while centered"},

    -- General <leader> Keybinds
    ["<leader>w"] = { ":CHADopen<cr>", "Focus file tree" },
    ["<leader>h"] = { ":Alpha<CR>", "Home" },
    ["<leader>u"] = { vim.cmd.UndotreeToggle, "View undo tree" },
    ["<leader>b"] = { ":Telescope buffers<CR>", "Buffers" },
    ["<leader>s"] = { [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], "Find and replace"},
    ["<leader>/"] = { ":lua require(\"Comment.api\").toggle.linewise.current()<CR>", "Comment" },

    -- <leader>p Prefixed Keybinds
    ["<leader>p"] = { name = "+File" },
    ["<leader>pp"] = { ":lua require'telescope'.extensions.project.project{}<CR>", "Projects" },
    ["<leader>pv"] = { vim.cmd.Ex, "File Explorer"},
    ["<leader>pf"] = { ":Telescope find_files<CR>", "Find File" },

    -- <leader>g Prefixed Keybinds
    ["<leader>g"] = { name = "+Git" },
    ["<leader>gf"] = { ":Telescope git_files<CR>", "Git Files" },
    ["<leader>gs"] = { vim.cmd.Git, "Git Status"},


    -- ----------- --
    -- LSP Keybinds
    -- ----------- --
    -- General Keybinds
    ["gd"] = { vim.lsp.buf.definition, "Go to definition" },
    ["K"] = { vim.lsp.buf.hover, "Hover" },
    ["<C-h>"] = { vim.lsp.buf.signature_help, "Signature Help" },
    -- <leader>l Prefixed Keybinds
    ["<leader>l"] = { name = "+LSP" },
    ["<leader>lf"] = { vim.lsp.buf.format, "Format" },
    ["<leader>ld"] = { vim.lsp.buf.definition, "Definition" },
    ["<leader>lr"] = { vim.lsp.buf.references, "References" },
    ["<leader>la"] = { vim.lsp.buf.code_action, "Code Action" },
    ["<leader>ld"] = { vim.lsp.buf.declaration, "Declaration" },
    ["<leader>lt"] = { vim.lsp.buf.type_definition, "Type Definition" },
    ["<leader>ls"] = { vim.lsp.buf.document_symbol, "Document Symbols" },
    ["<leader>ll"] = { vim.diagnostic.goto_next, "Goto next diagnostic" },
    ["<leader>lk"] = { vim.diagnostic.goto_prev, "Goto prev diagnostic" },
    
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



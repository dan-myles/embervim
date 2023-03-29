-- Map Leader
vim.g.mapleader = " "

-- Here we are using the plugin "WhichKey" to register keybinds with specified
-- prefixes. This is a great way to keep your keybinds organized and easy to
-- read.
local wk = require("which-key")

-- Normal Mode Keybinds
wk.register({
    -- General Keybinds
    ["H"] = { "gT", "Next Buffer" },
    ["L"] = { "gt", "Previous Buffer" },
    ["J"] = { "mzJ`z", "Delete line above" },
    ["<C-d>"] = {"<C-d>zz", "Down page while centered"},
    ["<C-u>"] = {"<C-u>zz", "Up page while centered"},

    -- General <leader> Keybinds
    ["<leader>a"] = { ":lua require(\"harpoon.mark\").add_file()<CR>", "Bookmark file" },
    ["<C-e>"] = { ":lua require(\"harpoon.ui\").toggle_quick_menu()<CR>", "Open Bookmarks" },
    ["<C-1>"] = { ":lua require(\"harpoon.ui\").nav_file(1)<CR>", "Go to Bookmark 1" },
    ["<C-2>"] = { ":lua require(\"harpoon.ui\").nav_file(2)<CR>", "Go to Bookmark 2" },
    ["<C-3>"] = { ":lua require(\"harpoon.ui\").nav_file(3)<CR>", "Go to Bookmark 3" },
    ["<C-4>"] = { ":lua require(\"harpoon.ui\").nav_file(4)<CR>", "Go to Bookmark 4" },
    ["<leader>q"] = { ":Bdelete<CR>", "Close Buffer" },
    ["<leader>Q"] = { ":lua require(\"bufdelete\").bufdelete({1,100})<CR>", "Close All Buffers" },
    ["<leader>w"] = { ":w<CR>", "Write Buffer" },
    ["<leader>W"] = { ":wa<CR>", "Write All Buffers" },
    ["<leader>u"] = { vim.cmd.UndotreeToggle, "View Undo Tree" },
    ["<leader>s"] = { [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], "Find and Replace"},
    ["<leader>/"] = { ":lua require(\"Comment.api\").toggle.linewise.current()<CR>", "Comment" },

    -- <leader>p Prefixed Keybinds File Actions
    ["<leader>p"] = { name = "+File" },
    ["<leader>pp"] = { ":lua require'telescope'.extensions.project.project{}<CR>", "Projects" },
    ["<leader>pv"] = { vim.cmd.Ex, "File Explorer"},
    ["<leader>pf"] = { ":Telescope find_files<CR>", "Search File" },
    ["<leader>ps"] = { ":Telescope live_grep<CR>", "Search Word"},

    -- <leader>g Prefixed Keybinds GIT Actions
    ["<leader>g"] = { name = "+Git" },
    ["<leader>gf"] = { ":Telescope git_files<CR>", "Git Files" },
    ["<leader>gs"] = { vim.cmd.Git, "Git Menu"},
    ["<leader>gb"] = { ":Telescope git_branches<CR>", "Git Branches" },
    ["<leader>ga"] = { ":Telescope git_commits<CR>", "Git Commits" },

    -- <leader>b Prefixed Keybinds Buffer Actions
    ["<leader>o"] = { name = "+Buffer" },
    ["<leader>of"] = { ":Telescope buffers<CR>", "" },
    ["<leader>oo"] = { ":bn<CR>", "Next Buffer" },
    ["<leader>oi"] = { ":bp<CR>", "Previous Buffer" },
    ["<leader>or"] = { ":Telescope oldfiles<CR>", "Recent Buffers" },

    -- <leader>h Prefixed Keybinds Home Actions
    ["<leader>h"] = { name = "+EmberVim" },
    ["<leader>ho"] = { ":Alpha<CR>", "Home" },
    ["<leader>hs"] = { ":e $HOME/.config/nvim/", "Settings"},
    ["<leader>hk"] = { ":Telescope keymaps<CR>", "Keybinds"},



    -- ----------- --
    -- LSP Keybinds
    -- ----------- --
    -- General Keybinds
    ["gd"] = { vim.lsp.buf.definition, "Go to definition" },
    ["K"] = { vim.lsp.buf.hover, "Hover" },
    -- <leader>l Prefixed Keybinds
    ["<leader>l"] = { name = "+LSP" },
    ["<leader>lr"] = { vim.lsp.buf.rename, "Rename" },
    ["<leader>ld"] = { vim.lsp.buf.definition, "Definition" },
    ["<leader>li"] = { vim.lsp.buf.references, "References" },
    ["<leader>la"] = { vim.lsp.buf.code_action, "Code Action" },
    ["<leader>ll"] = { vim.diagnostic.goto_next, "Goto next diagnostic" },
    ["<leader>lk"] = { vim.diagnostic.goto_prev, "Goto prev diagnostic" },
    ["<leader>ls"] = { ":Telescope diagnostics<CR>", "List diagnostics" },
}, { mode = "n" })

-- Visual Mode Keybinds
wk.register({
    ["<leader>y"] = { "\"+y", "Copy to System Clipboard" },
    ["<leader>/"] = { "<esc><cmd>lua require(\"Comment.api\").toggle.linewise(vim.fn.visualmode())<cr>", "comment" },
    ["J"] = { ":m '>+1<CR>gv=gv", "Move Down" },
    ["K"] = { ":m '<-2<CR>gv=gv", "Move Up" },
}, { mode = "v" })

-- Insert Mode Keybinds
wk.register({
    ["<C-h>"] = {vim.lsp.buf.signature_help, "Signature Help"},
}, { mode = "i" })





-- Get rid of this evil garbage
vim.keymap.set("n", "Q", "<nop>")



local wk = require("which-key")

-- Normal Mode Keybinds
wk.register({
    -- General Keybinds
    ["H"] = { "gT", "Next Buffer" },
    ["L"] = { "gt", "Previous Buffer" },
    ["J"] = { "mzJ`z", "Delete line above" },
    -- ["<C-d>"] = { "<C-d>zz", "Down page while centered" },
    -- ["<C-u>"] = { "<C-u>zz", "Up page while centered" },
    ["<C-p>"] = { ":Telescope git_files<CR>", "Git Files" },
    -- General Bookmark CTRL Keybinds
    ["<C-c>"] = { ":lua require(\"harpoon.ui\").nav_file(1)<CR>", "Go to Bookmark 1" },
    ["<C-v>"] = { ":lua require(\"harpoon.ui\").nav_file(2)<CR>", "Go to Bookmark 2" },
    ["<C-b>"] = { ":lua require(\"harpoon.ui\").nav_file(3)<CR>", "Go to Bookmark 3" },
    ["<C-n>"] = { ":lua require(\"harpoon.ui\").nav_file(4)<CR>", "Go to Bookmark 4" },
    -- General <leader> Keybinds
    ["<leader>a"] = { ":lua require(\"harpoon.mark\").add_file()<CR>", "Bookmark file" },
    ["<leader>e"] = { ":lua require(\"harpoon.ui\").toggle_quick_menu()<CR>", "Open Bookmarks" },
    ["<leader>q"] = { ":Bdelete<CR>", "Close Buffer" },
    ["<leader>w"] = { ":w<CR>", "Write Buffer" },
    ["<leader>u"] = { vim.cmd.UndotreeToggle, "View Undo Tree" },
    ["<leader>s"] = { [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], "Find and Replace" },
    ["<leader>/"] = { ":lua require(\"Comment.api\").toggle.linewise.current()<CR>", "Comment" },
    -- <leader>p Prefixed Keybinds File Actions
    ["<leader>p"] = { name = "+File" },
    ["<leader>pp"] = { ":lua require'telescope'.extensions.project.project{}<CR>", "Projects" },
    ["<leader>pv"] = { vim.cmd.Ex, "File Explorer" },
    ["<leader>pf"] = { ":Telescope find_files<CR>", "Search File" },
    ["<leader>ps"] = { ":Telescope live_grep<CR>", "Search Word" },
    -- <leader>g Prefixed Keybinds GIT Actions
    ["<leader>g"] = { name = "+Git" },
    ["<leader>gd"] = { ":Telescope git_files<CR>", "Git Files" },
    ["<leader>gs"] = { vim.cmd.Git, "Git Menu" },
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
    ["<leader>hs"] = { ":e $HOME/.config/nvim/", "Settings" },
    ["<leader>hk"] = { ":Telescope keymaps<CR>", "Keybinds" },
    ["<leader>ht"] = { ":Telescope colorscheme<CR>", "Themes" },
    -- <leader>m Prefixed Keybinds Markdown Actions
    ["<leader>m"] = { name = "+Markdown" },
    ["<leader>mp"] = { ":MarkdownPreview<CR>", "Start Preview" },
    ["<leader>ms"] = { ":MarkdownPreviewStop<CR>", "Stop Preview" },
    ["<leader>mt"] = { ":MarkdownPreviewToggle<CR>", "Toggle Preview" },
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
    ["<leader>lf"] = { vim.lsp.buf.format, "Format" },
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
    ["<C-h>"] = { vim.lsp.buf.signature_help, "Signature Help" },
}, { mode = "i" })





-- Get rid of this evil garbage
vim.keymap.set("n", "Q", "<nop>")

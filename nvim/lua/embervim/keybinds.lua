-- All keybinds are defined here with WhickKey
-- with the exception of some specific keybinds defined in lsp.lua
local wk = require("which-key")

-- ---------------------- --
--                        --
-- Normal Mode Keybinds
--                        --
-- ---------------------- --
wk.register({
    --
    --
    -- General Keybinds (No Prefix)
    --
    ------------------------------------------------
    ["H"] = { "gT", "Next Buffer" },
    ["L"] = { "gt", "Previous Buffer" },
    ["J"] = { "mzJ`z", "Delete line above" },
    ["gd"] = { vim.lsp.buf.definition, "Go to definition" },
    ["K"] = { vim.lsp.buf.hover, "Hover" },
    --
    --
    -- General Keybinds (Prefixed: <Ctrl>)
    --
    ------------------------------------------------
    ["<C-p>"] = { ":Telescope git_files<CR>", "Git Files" },
    --
    --
    -- General Keybinds (Prefixed: <leader>)
    --
    ------------------------------------------------
    ["<leader>a"] = { ":lua require(\"harpoon.mark\").add_file()<CR>", "Bookmark file" },
    ["<leader>e"] = { ":lua require(\"harpoon.ui\").toggle_quick_menu()<CR>", "Open Bookmarks" },
    ["<leader>q"] = { ":Bdelete<CR>", "Close Buffer" },
    ["<leader>w"] = { ":w<CR>", "Write Buffer" },
    ["<leader>u"] = { vim.cmd.UndotreeToggle, "View Undo Tree" },
    ["<leader>s"] = { [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], "Find and Replace" },
    ["<leader>t"] = { ":FloatermToggle<CR><C-\\><C-n>:FloatermUpdate --width=0.8 --height=0.8<CR>", "Toggle Terminal" },
    ["<leader>/"] = { ":lua require(\"Comment.api\").toggle.linewise.current()<CR>", "Comment" },
    ["<leader>1"] = { ":lua require(\"harpoon.ui\").nav_file(1)<CR>", "Go to Bookmark 1" },
    ["<leader>2"] = { ":lua require(\"harpoon.ui\").nav_file(2)<CR>", "Go to Bookmark 2" },
    ["<leader>3"] = { ":lua require(\"harpoon.ui\").nav_file(3)<CR>", "Go to Bookmark 3" },
    ["<leader>4"] = { ":lua require(\"harpoon.ui\").nav_file(4)<CR>", "Go to Bookmark 4" },
    --
    --
    -- File Keybinds (Prefixed: <leader>p)
    --
    ------------------------------------------------
    ["<leader>p"] = { name = "+File" },
    ["<leader>pv"] = { vim.cmd.Ex, "File Explorer" },
    ["<leader>pf"] = { ":Telescope find_files<CR>", "Search File" },
    ["<leader>ps"] = { ":Telescope live_grep<CR>", "Search Word in CWD" },
    ["<leader>pr"] = { ":Telescope oldfiles<CR>", "Recent Files" },
    ["<leader>pw"] = {
        ":lua require('telescope.builtin').current_buffer_fuzzy_find({previewer=false})<CR>",
        "Search Word in Current Buffer"
    },
    --
    --
    -- Git Keybinds (Prefixed: <leader>g)
    --
    ------------------------------------------------
    ["<leader>g"] = { name = "+Git" },
    ["<leader>gd"] = { ":Telescope git_files<CR>", "Git Files" },
    ["<leader>gb"] = { ":Telescope git_branches<CR>", "Git Branches" },
    ["<leader>ga"] = { ":Telescope git_commits<CR>", "Git Commits" },
    ["<leader>gs"] = {
        ":FloatermNew --autoclose=2 --name=LazyGit --title=LazyGit --width=0.9 --height=0.9 --position=center lazygit<CR>",
        "Git UI" },
    --
    --
    -- Buffer Keybinds (Prefixed: <leader>b)
    --
    ------------------------------------------------
    ["<leader>o"] = { name = "+Buffer" },
    ["<leader>of"] = { ":Telescope buffers<CR>", "Search Buffers" },
    ["<leader>oo"] = { ":bn<CR>", "Next Buffer" },
    ["<leader>oi"] = { ":bp<CR>", "Previous Buffer" },
    ["<leader>or"] = { ":Telescope oldfiles<CR>", "Recent Buffers" },
    --
    --
    -- Embervim Keybinds (Prefixed: <leader>h)
    --
    ------------------------------------------------
    ["<leader>h"] = { name = "+EmberVim" },
    ["<leader>ho"] = { ":Alpha<CR>", "Home" },
    ["<leader>hs"] = { ":e $HOME/.config/nvim/", "Settings" },
    ["<leader>hk"] = { ":Telescope keymaps<CR>", "Keybinds" },
    ["<leader>ht"] = { ":Telescope colorscheme<CR>", "Themes" },
    ["<leader>hl"] = { ":Lazy<CR>", "Lazy Plugin Manager" },
    ["<leader>hn"] = { ":VimBeGood<CR>", "Vim Tutor" },
    ["<leader>hp"] = { ":Telescope commands<CR>", "Command Palette" },
    ["<leader>hr"] = { ":Telescope reloader<CR>", "Module Reloader" },
    ["<leader>hm"] = { ":Mason<CR>", "Mason Package Manager" },
    --
    --
    -- Markdown Keybinds (Prefixed: <leader>m)
    --
    ------------------------------------------------
    ["<leader>m"] = { name = "+Markdown" },
    ["<leader>mp"] = { ":MarkdownPreview<CR>", "Start Preview" },
    ["<leader>ms"] = { ":MarkdownPreviewStop<CR>", "Stop Preview" },
    ["<leader>mt"] = { ":MarkdownPreviewToggle<CR>", "Toggle Preview" },
    --
    --
    -- Terminal Keybinds (Prefixed: <leader>i)
    --
    ------------------------------------------------
    ["<leader>i"] = { name = "+Terminal" },
    ["<leader>ii"] = { ":FloatermNew --width=0.8 --height=0.8<CR>", "New Terminal" },
    ["<leader>ik"] = { ":FloatermKill", "Kill Terminal" },
    --
    --
    -- LSP Keybinds (Prefixed: <leader>l)
    --
    ------------------------------------------------
    ["<leader>l"] = { name = "+LSP" },
    ["<leader>lr"] = { vim.lsp.buf.rename, "Rename" },
    ["<leader>ld"] = { vim.lsp.buf.definition, "Definition" },
    ["<leader>li"] = { vim.lsp.buf.references, "References" },
    ["<leader>la"] = { vim.lsp.buf.code_action, "Code Action" },
    ["<leader>ll"] = { vim.diagnostic.goto_next, "Goto next diagnostic" },
    ["<leader>lk"] = { vim.diagnostic.goto_prev, "Goto prev diagnostic" },
    ["<leader>ls"] = { ":Telescope diagnostics<CR>", "List diagnostics" },
    ["<leader>lf"] = { vim.lsp.buf.format, "Format" },
    --
    --
    -- Debug Keybinds (Prefixed: <leader>d)
    --
    ------------------------------------------------
    ["<leader>d"] = { name = "+Debug" },
    ["<leader>dc"] = { ":lua require('dap').continue()<CR>", "Continue" },
    ["<leader>db"] = { ":lua require('dap').toggle_breakpoint()<CR>", "Toggle Breakpoint" },
    ["<leader>do"] = { ":lua require('dap').step_over()<CR>", "Step Over" },
    ["<leader>di"] = { ":lua require('dap').step_into()<CR>", "Step Into" },
    ["<leader>de"] = { ":lua require('dap').step_out()<CR>", "Step Out" },
    ["<leader>dr"] = { ":lua require('dap').repl.open()<CR>", "Open REPL" },
    ["<leader>dl"] = { ":lua require('dap').run_last()<CR>", "Run Last" },
    ["<leader>dk"] = { ":lua require('dap.ui.widgets').hover()<CR>", "Hover" },
    ["<leader>dp"] = { ":lua require('dap.ui.widgets').preview()<CR>", "Preview" },
    ["<leader>du"] = { name = "+UI" },
    ["<leader>dui"] = { ":lua require('dapui').open()<CR>", "Open UI" },
    ["<leader>dun"] = { ":lua require('dapui').toggle()<CR>", "Toggle UI" },
    ["<leader>duc"] = { ":lua require('dapui').close()<CR>", "Close UI" },
}, { mode = "n" })


-- ---------------------- --
--                        --
-- Visual Mode Keybinds
--                        --
-- ---------------------- --
wk.register({
    ["<leader>y"] = { "\"+y", "Copy to System Clipboard" },
    ["<leader>/"] = { "<esc><cmd>lua require(\"Comment.api\").toggle.linewise(vim.fn.visualmode())<cr>", "comment" },
    ["J"] = { ":m '>+1<CR>gv=gv", "Move Selection Down" },
    ["K"] = { ":m '<-2<CR>gv=gv", "Move Selection Up" },
}, { mode = "v" })


-- ---------------------- --
--                        --
-- Insert Mode Keybinds
--                        --
-- ---------------------- --
wk.register({
    ["<C-h>"] = { vim.lsp.buf.signature_help, "Signature Help" },
}, { mode = "i" })


-- ---------------------- --
--                        --
-- Terminal Mode Keybinds
--                        --
-- ---------------------- --
wk.register({
    ["<Esc><Esc>"] = { "<C-\\><C-n>:FloatermToggle<CR>", "Normal Mode" },
    ["<C-h>"] = { "<C-\\><C-n>:FloatermPrev<CR>", "Previous Terminal" },
    ["<C-l>"] = { "<C-\\><C-n>:FloatermNext<CR>", "Next Terminal" },
    ["<C-x>"] = { "<C-\\><C-n>:FloatermKill<CR>", "Kill terminal" },
}, { mode = "t" })

-- Get rid of this evil garbage
vim.keymap.set("n", "Q", "<nop>")

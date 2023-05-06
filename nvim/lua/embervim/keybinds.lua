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
  ["J"] = { "mzJ`z", "Concatenate from line below" },
  ["K"] = { ":Lspsaga hover_doc<CR>", "Hover" },
  ["L"] = { ":Lspsaga show_line_diagnostics<CR>", "Show Line Diagnostics" },
  ["gd"] = { ":Lspsaga goto_definition<CR>zz", "Go to definition" },
  ["[e"] = {
    [[:lua require("lspsaga.diagnostic"):goto_prev({severity=vim.diagnostic.severity.ERROR})<CR>]],
    "Previous Diagnostic"
  },
  ["]e"] = {
    [[:lua require("lspsaga.diagnostic"):goto_next({severity=vim.diagnostic.severity.ERROR})<CR>]],
    "Previous Diagnostic"
  },
  ["[w"] = {
    [[:lua require("lspsaga.diagnostic"):goto_prev({severity=vim.diagnostic.severity.WARN})<CR>]],
    "Previous Diagnostic"
  },
  ["]w"] = {
    [[:lua require("lspsaga.diagnostic"):goto_next({severity=vim.diagnostic.severity.WARN})<CR>]],
    "Previous Diagnostic"
  },
  ["[r"] = {
    [[:lua require("lspsaga.diagnostic"):goto_prev({severity=vim.diagnostic.severity.HINT})<CR>]],
    "Previous Diagnostic"
  },
  ["]r"] = {
    [[:lua require("lspsaga.diagnostic"):goto_next({severity=vim.diagnostic.severity.HINT})<CR>]],
    "Previous Diagnostic"
  },
  ["[t"] = {
    [[:lua require("lspsaga.diagnostic"):goto_prev()<CR>]],
    "Previous Diagnostic"
  },
  ["]t"] = {
    [[:lua require("lspsaga.diagnostic"):goto_next()<CR>]],
    "Previous Diagnostic"
  },
  --
  --
  -- General Keybinds (Prefixed: <Ctrl>)
  --
  ------------------------------------------------
  ["<C-p>"] = { ":Telescope git_files<CR>", "Git Files" },
  ["<C-e>"] = { ":lua require(\"harpoon.ui\").toggle_quick_menu()<CR>", "Open Bookmarks" },
  --
  --
  -- General Keybinds (Prefixed: <leader>)
  --
  ------------------------------------------------
  ["<leader>o"] = { ":Lspsaga outline<CR>", "Toggle Code Outline" },
  ["<leader>a"] = { ":lua require(\"harpoon.mark\").add_file()<CR>", "Bookmark file" },
  ["<leader>q"] = { ":Bdelete<CR>", "Close Buffer" },
  ["<leader>w"] = { ":w<CR>", "Write Buffer" },
  ["<leader>z"] = { ":ZenMode<CR>", "Toggle Zen Mode" },
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
  ["<leader>pf"] = { ":Telescope find_files<CR>", "Search File" },
  ["<leader>ps"] = { ":Telescope live_grep<CR>", "Search Word in CWD" },
  ["<leader>pr"] = { ":Telescope oldfiles<CR>", "Recent Files" },
  ["<leader>pv"] = { ":Oil --float<CR>", "File Explorer" },
  ["<leader>pw"] = {
    ":lua require('telescope.builtin').current_buffer_fuzzy_find({ previewer=false, layout_config = { height = 20, width = 65, }, })<CR>",
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
  ["<leader>b"] = { name = "+Buffer" },
  ["<leader>bf"] = { ":Telescope buffers<CR>", "Search Buffers" },
  ["<leader>bn"] = { ":bn<CR>", "Next Buffer" },
  ["<leader>bp"] = { ":bp<CR>", "Previous Buffer" },
  ["<leader>br"] = { ":Telescope oldfiles<CR>", "Recent Buffers" },
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
  ["<leader>lq"] = { ":Lspsaga lsp_finder<CR>", "Definition & References" },
  ["<leader>lr"] = { ":Lspsaga rename ++project<CR>", "Rename" },
  ["<leader>ld"] = { ":Lspsaga peek_definition<CR>", "Peek Definition" },
  ["<leader>lt"] = { ":Lspsaga peek_type_definition<CR>", "Peek Type Definition" },
  ["<leader>lb"] = { ":Lspsaga show_buf_diagnostics<CR>", "Buffer Diagnostics" },
  ["<leader>lw"] = { ":Lspsaga show_workspace_diagnostics<CR>", "Workspace Diagnostics" },
  ["<leader>la"] = { ":Lspsaga code_action<CR>", "Code Action" },
  ["<leader>lm"] = { ":e<CR>", "Restart Language Server" },
  ["<leader>lf"] = { vim.lsp.buf.format, "Format" },
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

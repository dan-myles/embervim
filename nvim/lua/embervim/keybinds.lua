-- This is where we will define general keybinds
-- Plugin specific keybinds are defined in their respective files.
-- If you want a more clear view of all keybinds you can do "<leader>hk"
-- This will bring up a searchable directory of keybinds
local bind = vim.keymap.set

--
-- Normal Mode Keybinds
--
bind("n", "J", "mzJ`z", { noremap = true, silent = true, desc = "Concatenate from line below" })
-- bind("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { noremap = true, silent = true, desc = "Find and Replace" })
bind("n", "<leader>lm", "<cmd>LspRestart<CR>", { noremap = true, silent = true, desc = "Restart LSP" })
bind("n", "<leader>lf", vim.lsp.buf.format, { noremap = true, silent = true, desc = "Format" })
-- bind("n", "<C-d>", "<C-d>zz", { noremap = true, silent = true, desc = "Scroll Down" })
-- bind("n", "<C-u>", "<C-u>zz", { noremap = true, silent = true, desc = "Scroll Up" })

--
-- Visual Mode Keybinds
--
bind("v", "<C-c>", "\"+y", { noremap = true, silent = true, desc = "Copy to System Clipboard" })
bind("v", "J", ":m '>+1<CR>gv=gv", { noremap = true, silent = true, desc = "Move Selection Down" })
bind("v", "K", ":m '<-2<CR>gv=gv", { noremap = true, silent = true, desc = "Move Selection Up" })

--
-- Insert Mode Keybinds
--
bind("i", "<C-h>", vim.lsp.buf.signature_help, { noremap = true, silent = true, desc = "Signature Help" })
bind("i", "<C-v>", "<C-r>+", { noremap = true, silent = true, desc = "Paste from System Clipboard" })


--
-- Terminal Mode Keybinds
--
bind("t", "<Esc>", [[<C-\><C-n>]], { remap = true, silent = true, desc = "Leave Insert Mode" })
bind("t", "<C-w>", [[<C-\><C-n><C-w>]], { remap = true, silent = true, desc = "Close Terminal" })

-- Get rid of this evil garbage
bind("n", "Q", "<nop>")
bind("n", "q:", "<nop>")
bind("n", "q/", "<nop>")
bind("n", "q?", "<nop>")

-- Dont use arrow keys!!!
bind("i", "<Left>", "<nop>")
bind("i", "<Right>", "<nop>")
bind("i", "<Up>", "<nop>")
bind("i", "<Down>", "<nop>")



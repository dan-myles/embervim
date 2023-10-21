-- This is where we will define general keybinds
-- Plugin specific keybinds are defined in their respective files.
-- If you want a more clear view of all keybinds you can do "<leader>hk"
-- This will bring up a searchable directory of keybinds
local bind = vim.keymap.set

--
-- Normal Mode Keybinds
--
bind("n", "J", "mzJ`z", { noremap = true, silent = true, desc = "Concatenate from line below" })
bind("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { noremap = true, silent = true, desc = "Find and Replace" })
bind("n", "<leader>lm", "<cmd>LspRestart<CR>", { noremap = true, silent = true, desc = "Restart LSP" })
bind("n", "K", vim.lsp.buf.hover, { noremap = true, silent = true, desc = "Hover" })
bind("n", "L", vim.diagnostic.open_float, { noremap = true, silent = true, desc = "Show diagnostics" })
bind("n", "<leader>lf", vim.lsp.buf.format, { noremap = true, silent = true, desc = "Format" })
bind("n", "<leader>pv", vim.cmd.Ex, { noremap = true, silent = true, desc = "NetRW" })

bind("n", "[e", function()
	vim.diagnostic.goto_prev({
		severity = vim.diagnostic.severity.ERROR,
	})
end, { noremap = true, silent = true, desc = "Go to definition" })

bind("n", "]e", function()
	vim.diagnostic.goto_next({
		severity = vim.diagnostic.severity.ERROR,
	})
end, { noremap = true, silent = true, desc = "Go to definition" })

bind("n", "[w", function()
	vim.diagnostic.goto_prev({
		severity = vim.diagnostic.severity.WARN,
	})
end, { noremap = true, silent = true, desc = "Go to definition" })

bind("n", "]w", function()
	vim.diagnostic.goto_next({
		severity = vim.diagnostic.severity.WARN,
	})
end, { noremap = true, silent = true, desc = "Go to definition" })

bind("n", "[q", function()
	vim.diagnostic.goto_prev()
end, { noremap = true, silent = true, desc = "Go to definition" })

bind("n", "]q", function()
	vim.diagnostic.goto_next()
end, { noremap = true, silent = true, desc = "Go to definition" })


--
-- Visual Mode Keybinds
--
bind("v", "<leader>y", "\"+y", { noremap = true, silent = true, desc = "Copy to System Clipboard" })
bind("v", "J", ":m '>+1<CR>gv=gv", { noremap = true, silent = true, desc = "Move Selection Down" })
bind("v", "K", ":m '<-2<CR>gv=gv", { noremap = true, silent = true, desc = "Move Selection Up" })


--
-- Insert Mode Keybinds
--
bind("i", "<C-h>", vim.lsp.buf.signature_help, { noremap = true, silent = true, desc = "Signature Help" })


--
-- Terminal Mode Keybinds
--
bind("t", "<Esc><Esc>", "<C-\\n><C-n>", { noremap = true, silent = true, desc = "Leave Insert Mode" })

-- Get rid of this evil garbage
bind("n", "Q", "<nop>")
bind("n", "q:", "<nop>")
bind("n", "q/", "<nop>")
bind("n", "q?", "<nop>")


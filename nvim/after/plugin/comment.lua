require("Comment").setup({
    mappings = {
        basic = false,
        extra = false,
    }
})

vim.keymap.set('n', '<leader>/', '<cmd>lua require("Comment.api").toggle.linewise.current()<CR>')
vim.keymap.set('v', '<leader>/', '<ESC><cmd>lua require("Comment.api").toggle.linewise(vim.fn.visualmode())<CR>')

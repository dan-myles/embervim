local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)


require("telescope").setup {
    -- extensions = {
    --     file_browser = {
    --         theme = "ivy",
    --         hijack_netrw = true,
    --         initial_mode = "normal",
    --         previewer = false,
    --         full_width = true,
    --         full_height = true,
    --     },
    -- },
}

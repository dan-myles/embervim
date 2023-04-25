local builtin = require('telescope.builtin')

require("telescope").setup({
    extensions = {
        file_browser = {
            theme = "dropdown",
            grouped = true,
        },
    },
})

require("telescope").load_extension("dap")

require("telescope").load_extension("file_browser")

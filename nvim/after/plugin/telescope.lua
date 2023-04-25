local builtin = require('telescope.builtin')

require("telescope").setup({
    extensions = {
        file_browser = {
            theme = "dropdown",
            initial_mode = "normal",
            hijack_netrw = true,
            grouped = true,
            previewer = false,
            layout_config = {
                height = 25,
                width = 85,
            },
        },
    },
})

require("telescope").load_extension("dap")

require("telescope").load_extension("file_browser")

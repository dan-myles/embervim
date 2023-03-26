vim.opt.termguicolors = true

require("bufferline").setup({
    highlights = {
        fill = {
            bg = '#1e222a',
        },
    },

    options = {
        mode = "buffers",
        diagnostics = "nvim_lsp",
        offsets = {
            {
            filetype = "CHADTree", 
            text = "File Explorer", 
            -- highlight = "PanelHeading",
            text_align = "center",
            padding = 1,
            },

            {
                filetype = "undotree",
                text = "Undo Tree",
                -- highlight = "PanelHeading",
                text_align = "center",
                padding = 1,
            },

            {
                filetype = "Packer",
                text = "Packer",
                -- highlight = "PanelHeading",
                padding = 1,
            },

            
        },
    },
})

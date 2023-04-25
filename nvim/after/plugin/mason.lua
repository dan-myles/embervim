require("mason").setup()

require("mason-null-ls").setup({
    ensure_installed = {
        -- Opt to list sources here, when available in mason.
    },
    automatic_installation = false,
    handlers = {},
})

require("mason-nvim-dap").setup({
    ensure_installed = { 'js' },
    handlers = {},
})

require("null-ls").setup({
    sources = {
        -- Anything not supported by mason.
    }
})

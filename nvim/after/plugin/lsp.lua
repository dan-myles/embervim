local lsp = require('lsp-zero').preset({
    name = 'recommended',
    set_lsp_keymaps = true,
    manage_nvim_cmp = true,
    suggest_lsp_servers = true
})

-- (Optional) Configure lua language server for neovim
lsp.nvim_workspace()

-- Fix Undefined global 'vim'
lsp.configure('lua-language-server',
    { settings = { Lua = { diagnostics = { globals = { 'vim' } } } } })

local cmp = require('cmp')
local cmp_select = { behavior = cmp.SelectBehavior.Select }
local cmp_mappings = lsp.defaults.cmp_mappings({
    ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
    ['<C-n>'] = cmp.mapping.select_next_item(cmp_select)
})

cmp_mappings['<Tab>'] = nil
cmp_mappings['<S-Tab>'] = nil

lsp.setup_nvim_cmp({ mapping = cmp_mappings, preselect = cmp.PreselectMode.None })

lsp.set_preferences({
    sign_icons = { warn = '', error = '', hint = '', info = '' }
})

lsp.format_on_save({
    format_opts = {
        timeout_ms = 10000,
    },
    servers = {
        ['lua_ls'] = { 'lua' },
        ['rust_analyzer'] = { 'rust' },
        ['null-ls'] = {
            'javacript',
            'typescript',
            'tsx',
            'jsx',
            'json'
        }
    }
})

lsp.setup()

vim.diagnostic.config({ virtual_text = true })

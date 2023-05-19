-- LSP comes pre-configured with a lot of sensible defaults, if you would like
-- to change things, you can do so by passing a table to the setup function.
--
-- The most important part of this file is the format_on_save function.
-- This will be where you configure which filetypes you want to format on save,
-- and which LSP servers you want to use for formatting. Keep in mind if
-- you are using a Null-LS language server (ie. prettier) you will need to
-- set the filetype under "Null LS".

-- Setting up Neodev LUA LSP Server **before** setting up LSPZero
require("neodev").setup()

local lsp = require('lsp-zero').preset({
  name = 'recommended',
  set_lsp_keymaps = true,
  manage_nvim_cmp = true,
  suggest_lsp_servers = true
})

-- (Optional) Configure lua language server for neovim
lsp.nvim_workspace()

-- Fix Undefined global 'vim'
lsp.configure('lua-language-server', {
  settings = {
    Lua = {
      completion = {
        callSnippet = 'Replace'
      },
      diagnostics = { globals = { 'vim' } }
    }
  }
})

-- Fix Offset Encodings for NULL-LS
lsp.configure('clangd', {
  cmd = {
    "clangd",
    "--all-scopes-completion",
    "--suggest-missing-includes",
    "--background-index",
    "--pch-storage=disk",
    "--cross-file-rename",
    "--log=info",
    "--completion-style=detailed",
    "--enable-config",          -- clangd 11+ supports reading from .clangd configuration file
    "--clang-tidy",
    "--offset-encoding=utf-16", --temporary fix for null-ls
    -- "--clang-tidy-checks=-*,llvm-*,clang-analyzer-*,modernize-*,-modernize-use-trailing-return-type",
    -- "--fallback-style=Google",
    -- "--header-insertion=never",
    -- "--query-driver=<list-of-white-listed-complers>"
  },
  filetypes = { 'c', 'cpp', 'objc', 'objcpp' }
})

local cmp = require('cmp')
local cmp_select = { behavior = cmp.SelectBehavior.Select }
local cmp_mappings = lsp.defaults.cmp_mappings({
  ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
  ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
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
    async = true,
  },

  servers = {
    -- ['lua_ls'] = { 'lua' },
    ['jdtls'] = { 'java' },
    ['lemminx'] = { 'fxml' },
    ['prismals'] = { 'prisma' },
    ['null-ls'] = {
      'javacript',
      'typescript',
      'typescriptreact',
      'javascriptreact',
      'json',
      'rust',
      'go'
    }
  }
})

lsp.skip_server_setup({ 'jdtls' })

lsp.setup()

vim.diagnostic.config({
  virtual_text = false,
  underline = true,
})

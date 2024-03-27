return {
  -- LSP Zero
  {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v3.x',
    lazy = true,
    config = false,
    init = function()
      -- Disable automatic setup, we are doing it manually
      vim.g.lsp_zero_extend_cmp = 0
      vim.g.lsp_zero_extend_lspconfig = 0
    end,
  },

  -- Mason
  {
    'williamboman/mason.nvim',
    lazy = false,
    config = function()
      require("mason").setup()
    end,
  },

  -- Autocompletion
  {
    'hrsh7th/nvim-cmp',
    event = 'InsertEnter',
    dependencies = {
      { 'L3MON4D3/LuaSnip' },
      { 'hrsh7th/cmp-nvim-lsp-signature-help' },
    },
    config = function()
      -- Here is where you configure the autocompletion settings.
      local lsp_zero = require('lsp-zero')
      lsp_zero.extend_cmp()
      -- And you can configure cmp even more, if you want to.
      local cmp = require('cmp')
      local cmp_action = lsp_zero.cmp_action()
      cmp.setup({
        sources = {
          { name = 'nvim_lsp' },
          { name = 'nvim_lsp_signature_help' },
        },
        formatting = lsp_zero.cmp_format(),
        mapping = cmp.mapping.preset.insert({
            ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
            ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
            ['<C-y>'] = cmp.mapping.confirm({ select = true }),
            ["<C-Space>"] = cmp.mapping.complete(),
        })
      })
    end
  },

  -- LSP
  {
    'neovim/nvim-lspconfig',
    cmd = { 'LspInfo', 'LspInstall', 'LspStart' },
    event = { 'BufReadPre', 'BufNewFile' },
    dependencies = {
      { 'hrsh7th/cmp-nvim-lsp' },
      { 'williamboman/mason-lspconfig.nvim' },
    },
    config = function()
      -- This is where all the LSP shenanigans will live
      local lsp_zero = require('lsp-zero')

      lsp_zero.extend_lspconfig()
      lsp_zero.on_attach(function(client, bufnr)
        -- see :help lsp-zero-keybindings
        -- to learn the available actions
        lsp_zero.default_keymaps({ buffer = bufnr })
      end)

      require('mason-lspconfig').setup({
        ensure_installed = {},
        handlers = {
          lsp_zero.default_setup,
          lua_ls = function()
            -- (Optional) Configure lua language server for neovim
            local lua_opts = lsp_zero.nvim_lua_ls()
            require('lspconfig').lua_ls.setup(lua_opts)
          end,
          clangd = function()
            require('lspconfig').clangd.setup({
              cmd = {
                "clangd",
                "--all-scopes-completion",
                "--suggest-missing-includes",
                "--background-index",
                "--pch-storage=disk",
                "--cross-file-rename",
                "--log=info",
                "--completion-style=detailed",
                "--enable-config", -- clangd 11+ supports reading from .clangd configuration file
                "--clang-tidy",
                "--offset-encoding=utf-16", 
                -- "--clang-tidy-checks=-*,llvm-*,clang-analyzer-*,modernize-*,-modernize-use-trailing-return-type",
                -- "--fallback-style=Google",
                -- "--header-insertion=never",
                -- "--query-driver=<list-of-white-listed-complers>"
              },
            })
          end,
        }
      })

      vim.diagnostic.config({
        virtual_text = true,
        underline = false,
      })
    end
  },

  -- LSPSaga
  {
    "nvimdev/lspsaga.nvim",
    lazy = true,
    event = { "LspAttach" },
    keys = {
      { "K", "<cmd>Lspsaga hover_doc<CR>", desc = "Hover" },
      { "L", "<cmd>Lspsaga show_line_diagnostics<CR>", desc = "Show Line Diagnostics" },
      { "gd",         "<cmd>Lspsaga goto_definition<CR>zz",          desc = "Go to Definition" },
      { "<leader>o",  "<cmd>Lspsaga outline<CR>",                    desc = "Toggle Code Outline" },
      { "<leader>lq", "<cmd>Lspsaga finder<CR>",                     desc = "Definition & References" },
      { "<leader>lr", "<cmd>Lspsaga rename ++project<CR>",           desc = "Rename" },
      { "<leader>ld", "<cmd>Lspsaga peek_definition<CR>",            desc = "Peek Definition" },
      { "<leader>lt", "<cmd>Lspsaga peek_type_definition<CR>",       desc = "Peek Type Definition" },
      { "<leader>lb", "<cmd>Lspsaga show_buf_diagnostics<CR>",       desc = "Buffer Diagnostics" },
      { "<leader>lw", "<cmd>Lspsaga show_workspace_diagnostics ++float<CR>", desc = "Workspace Diagnostics" },
      { "<leader>la", "<cmd>Lspsaga code_action<CR>",                desc = "Code Action" },
      { "[e", "<cmd>lua require('lspsaga.diagnostic'):goto_prev({severity=vim.diagnostic.severity.ERROR})<CR>", desc = "Previous Error" },
      { "]e", "<cmd>lua require('lspsaga.diagnostic'):goto_next({severity=vim.diagnostic.severity.ERROR})<CR>", desc = "Next Error" },
      { "[d", "<cmd>lua require('lspsaga.diagnostic'):goto_prev()<CR>", desc = "Previous Diagnostic" },
      { "]d", "<cmd>lua require('lspsaga.diagnostic'):goto_next()<CR>", desc = "Next Diagnostic" },
    },
    config = function()
      require("lspsaga").setup({
        ui = {
          code_action = "",
        },
        symbol_in_winbar = {
          enable = false,
        },
        code_action = {
          keys = {
            quit = { "q", "<ESC>" },
          },
        },
        diagnostic = {
          show_code_action = false,
        },
        hover = {
          max_width = 0.5,
          max_height = 0.5
        },
      })
    end
  },

  -- Formatting
  {
    "stevearc/conform.nvim",
    lazy = true,
    event = { 'BufReadPre', 'BufNewFile' },
    config = function()
      require("conform").setup({
        format_after_save = {
          lsp_fallback = false
        },
        formatters_by_ft = {
          -- cpp = { "clang_format" },
          go = { "gofumpt", "gci" },
          rust = { "rustfmt" },
          typescript = { "prettierd" },
          typescriptreact = { "prettierd" },
          javascript = { "prettierd" },
          javascriptreact = { "prettierd" }
        }
      })
    end,
  },

  -- Linting
  {
    "mfussenegger/nvim-lint",
    lazy = true,
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      require("lint").linters_by_ft = {
        typescript = { "eslint_d" },
        typescriptreact = { "eslint_d" },
        javascript = { "eslint_d" },
        javascriptreact = { "eslint_d" }
      }
    end
  }
}

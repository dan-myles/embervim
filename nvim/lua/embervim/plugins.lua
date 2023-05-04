return {
  -----------
  -- Themes
  -----------
  -- If you want to use a theme:
  -- Make sure to set lazy = false and priority = 1000
  -- This will make sure that the theme is loaded before any other plugins

  -- VSCode Dark +
  {
    "Mofiqul/vscode.nvim",
    lazy = false,
    priority = 1000
  },

  -- Catppuccin
  {
    "catppuccin/nvim",
    name = "catppuccin"
  },

  -- Rose Pine
  {
    'rose-pine/neovim',
    name = 'rose-pine'
  },

  -- Kanagawa
  {
    'rebelot/kanagawa.nvim',
    name = 'kanagawa'
  },

  -----------
  -- Plugins
  -----------

  -- Treesitter
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate"
  },

  -- Copilot
  {
    "github/copilot.vim",
    lazy = false,
    priority = 9999
  },

  -- Vim Markdown (MD Preview)
  {
    "iamcco/markdown-preview.nvim",
    build = "cd app && npm install",
    init = function() vim.g.mkdp_filetypes = { "markdown" } end
  },

  -- Startup Screen
  {
    "goolord/alpha-nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" }
  },

  -- Noice NVIM (UI)
  {
    "folke/noice.nvim",
    dependencies = { "MunifTanjim/nui.nvim" }
  },

  -- Whichkey (Show Keybinds!)
  {
    "folke/which-key.nvim",
    config = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 500
    end
  },

  -- Telescope
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.1",
    dependencies = { "nvim-lua/plenary.nvim" }
  },

  -- LSP/Intellisense
  {
    "VonHeikemen/lsp-zero.nvim",
    branch = "v1.x",
    dependencies = {
      -- LSP
      "neovim/nvim-lspconfig",             -- Required
      "williamboman/mason.nvim",           -- Optional
      "williamboman/mason-lspconfig.nvim", -- Optional
      -- Autocompletion
      "hrsh7th/nvim-cmp",                  -- Required
      "hrsh7th/cmp-nvim-lsp",              -- Required
      "hrsh7th/cmp-buffer",                -- Optional
      "hrsh7th/cmp-path",                  -- Optional
      "saadparwaiz1/cmp_luasnip",          -- Optional
      "hrsh7th/cmp-nvim-lua",              -- Optional
      -- Snippets
      "L3MON4D3/LuaSnip",                  -- Required
      "rafamadriz/friendly-snippets",      -- Optional
      -- Custom
      "jose-elias-alvarez/null-ls.nvim",   -- NULL LS
      "jay-babu/mason-null-ls.nvim",       -- NULL LS + Mason Support
      "glepnir/lspsaga.nvim",              -- Better LSP UI
      "folke/neodev.nvim",                 -- NeoDev LSP
      "mfussenegger/nvim-jdtls",           -- Java LSP
      "windwp/nvim-autopairs",             -- Autopairs
      "lukas-reineke/lsp-format.nvim"      -- Autoformat on Save ASYNC
    }
  },

  { "xiyaowong/transparent.nvim" },          -- Transparent Toggle
  { "folke/zen-mode.nvim" },                 -- Zen Mode
  { "stevearc/oil.nvim" },                   -- File Manager
  { "mbbill/undotree" },                     -- Undo Tree
  { "famiu/bufdelete.nvim" },                -- Buffer Deleter
  { "nvim-lualine/lualine.nvim" },           -- Statusline
  { "lukas-reineke/indent-blankline.nvim" }, -- Indent Blankline
  { "lewis6991/gitsigns.nvim" },             -- Git Signs
  { "ThePrimeagen/harpoon" },                -- Harpoon
  { "NvChad/nvim-colorizer.lua" },           -- Colorizer
  { "numToStr/Comment.nvim" },               -- Commenter
  { "joeytwiddle/sexy_scroller.vim" },       -- Sexy Scroller
  { "ThePrimeagen/vim-be-good" },            -- Vim Be Good (Vim Tutor)
  { "voldikss/vim-floaterm" },               -- Floaterm

  -- {
  --     name = "bufferlist",
  --     dir = "/home/dan/Personal/bufferlist/branches/main"
  -- },
}

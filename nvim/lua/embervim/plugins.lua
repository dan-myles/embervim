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
    lazy = false,
    priority = 1000,
    name = "catppuccin"
  },

  -- Rose Pine
  {
    'rose-pine/neovim',
    lazy = false,
    priority = 1000,
    name = 'rose-pine'
  },

  -- Kanagawa
  {
    'rebelot/kanagawa.nvim',
    lazy = false,
    priority = 1000,
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
      vim.o.timeoutlen = 1200
    end
  },

  -- Show TODO Comments & More!
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" }
  },

  -- Window Manager (Auto-Resize)
  {
    "danlikestocode/windows.nvim",
    dependencies = {
      "anuvyklack/middleclass",
      "anuvyklack/animation.nvim"
    }
  },

  -- Breadcrumbs
  {
    "utilyre/barbecue.nvim",
    name = "barbecue",
    version = "*",
    dependencies = {
      "SmiteshP/nvim-navic",
      "nvim-tree/nvim-web-devicons", -- optional dependency
    },
  },

  -- Telescope
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.1",
    dependencies = { "nvim-lua/plenary.nvim" }
  },

  -- Neo Tree (File Explorer)
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v2.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
    },
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
      -- We are using this fork of nvim-cmp because it has better support for
      -- tailwind LSP. The original nvim-cmp repo has a PR open for this but
      -- has not been implemented yet. Tailwind LSP slowdown issues are fixed
      -- by this fork!
      "yioneko/nvim-cmp",                -- Required
      "hrsh7th/cmp-nvim-lsp",            -- Required
      "hrsh7th/cmp-buffer",              -- Optional
      "hrsh7th/cmp-path",                -- Optional
      "saadparwaiz1/cmp_luasnip",        -- Optional
      "hrsh7th/cmp-nvim-lua",            -- Optional
      -- Snippets
      "L3MON4D3/LuaSnip",                -- Required
      "rafamadriz/friendly-snippets",    -- Optional
      -- Custom
      "jose-elias-alvarez/null-ls.nvim", -- NULL LS
      "jay-babu/mason-null-ls.nvim",     -- NULL LS + Mason Support
      "glepnir/lspsaga.nvim",            -- Better LSP UI
      "folke/neodev.nvim",               -- NeoDev LSP
      "mfussenegger/nvim-jdtls",         -- Java LSP
      "windwp/nvim-autopairs",           -- Autopairs
      "lukas-reineke/lsp-format.nvim"    -- Autoformat on Save ASYNC
    }
  },

  { "tpope/vim-surround" },                  -- Vim Surround
  { "xiyaowong/transparent.nvim" },          -- Transparent Toggle
  { "folke/zen-mode.nvim" },                 -- Zen Mode
  { "mbbill/undotree" },                     -- Undo Tree
  { "famiu/bufdelete.nvim" },                -- Buffer Deleter
  { "nvim-lualine/lualine.nvim" },           -- Statusline
  { "lukas-reineke/indent-blankline.nvim" }, -- Indent Blankline
  { "lewis6991/gitsigns.nvim" },             -- Git Signs
  { "ThePrimeagen/harpoon" },                -- Harpoon
  { "NvChad/nvim-colorizer.lua" },           -- Colorizer
  { "numToStr/Comment.nvim" },               -- Commenter
  { "declancm/cinnamon.nvim" },              -- Smooth Scrolling 🔥
  { "ThePrimeagen/vim-be-good" },            -- Vim Be Good (Vim Tutor)
  { "voldikss/vim-floaterm" },               -- Floaterm
}

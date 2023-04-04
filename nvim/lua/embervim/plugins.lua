return {
    -- Themes
    {"Mofiqul/vscode.nvim", lazy = false, priority = 1000}, -- Treesitter
    {"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"}, -- Copilot
    {"github/copilot.vim", lazy = false, priority = 9999},

    -- Vim Markdown (MD Preview)
    {
        "iamcco/markdown-preview.nvim",
        build = "cd app && npm install",
        init = function() vim.g.mkdp_filetypes = {"markdown"} end
    }, -- Startup Screen
    {"goolord/alpha-nvim", dependencies = {"nvim-tree/nvim-web-devicons"}},

    -- Noice NVIM (UI)
    {
        "folke/noice.nvim",
        dependencies = {"MunifTanjim/nui.nvim", "rcarriga/nvim-notify"}
    }, -- Whichkey (Show Keybinds!)
    {
        "folke/which-key.nvim",
        config = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 300
        end
    }, -- LSP Zero
    {
        "VonHeikemen/lsp-zero.nvim",
        branch = "v1.x",
        dependencies = {
            -- LSP
            "neovim/nvim-lspconfig", -- Required
            "williamboman/mason.nvim", -- Optional
            "williamboman/mason-lspconfig.nvim", -- Optional
            "jose-elias-alvarez/null-ls.nvim", -- NULL LS Support
            "jay-babu/mason-null-ls.nvim", -- NULL LS + Mason Support
            -- Autocompletion
            "hrsh7th/nvim-cmp", -- Required
            "hrsh7th/cmp-nvim-lsp", -- Required
            "hrsh7th/cmp-buffer", -- Optional
            "hrsh7th/cmp-path", -- Optional
            "saadparwaiz1/cmp_luasnip", -- Optional
            "hrsh7th/cmp-nvim-lua", -- Optional
            -- Snippets
            "L3MON4D3/LuaSnip", -- Required
            "rafamadriz/friendly-snippets" -- Optional
        }
    }, -- Telescope
    {
        "nvim-telescope/telescope.nvim",
        tag = "0.1.1",
        dependencies = {"nvim-lua/plenary.nvim"}
    }, -- Telescope Projects
    {"nvim-telescope/telescope-project.nvim"}, -- Undo Tree
    {"mbbill/undotree"}, -- Buffer Deleter
    {"famiu/bufdelete.nvim"}, -- Vim Fugitive (Git Integration)
    {"tpope/vim-fugitive"}, -- Lua Status Line
    {"nvim-lualine/lualine.nvim"}, -- Indent Bars
    {"lukas-reineke/indent-blankline.nvim"}, -- Git Signs (Column Bar)
    {"lewis6991/gitsigns.nvim"}, -- Harpoon
    {"ThePrimeagen/harpoon"}, -- NVIM Colorizer
    {"NvChad/nvim-colorizer.lua"}, -- Commenter
    {"numToStr/Comment.nvim"}
}

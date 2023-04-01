-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- Theme
    use('Mofiqul/vscode.nvim')

    -- Github Copilot
    use('github/copilot.vim')

    -- Treesitter
    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })

    -- Telescope
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        -- or                          , branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }

    -- Illuminate
    use('RRethy/vim-illuminate')

    -- Barbecue (Breadcrumbs)
    use({
        "utilyre/barbecue.nvim",
        tag = "*",
        requires = {
            "SmiteshP/nvim-navic",
            "nvim-tree/nvim-web-devicons", -- optional dependency
        },
        after = "nvim-web-devicons",       -- keep this if you're using NvChad
    })

    -- Harpoon
    use('ThePrimeagen/harpoon')

    -- Telescope Projects
    use('nvim-telescope/telescope-project.nvim')

    -- Undo Tree
    use('mbbill/undotree')

    -- Buffer Deleter
    use('famiu/bufdelete.nvim')

    -- Buffer Line
    use { 'akinsho/bufferline.nvim', tag = "v3.*",
        requires = 'nvim-tree/nvim-web-devicons' }

    -- Vim Fugitive
    use('tpope/vim-fugitive')

    -- Vim Markdown
    use({
        "iamcco/markdown-preview.nvim",
        run = "cd app && npm install",
        setup = function() vim.g.mkdp_filetypes = { "markdown" } end,
        ft = { "markdown" },
    })

    -- Navic (Window Bar Code Context)
    use {
        "SmiteshP/nvim-navic",
        requires = "neovim/nvim-lspconfig"
    }

    -- NVIM Colorizer
    use('NvChad/nvim-colorizer.lua')

    -- Comment Magic
    use('numToStr/Comment.nvim')

    -- Startup Screen
    use {
        'goolord/alpha-nvim',
        requires = { 'nvim-tree/nvim-web-devicons' },
    }

    -- Indent Blank Lines
    use('lukas-reineke/indent-blankline.nvim')

    -- Git Signs
    use('lewis6991/gitsigns.nvim')

    -- Lua Status Line
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }

    -- Discord Rich Presence
    use('andweeb/presence.nvim')

    -- Noice NVIM
    use({
        "folke/noice.nvim",
        requires = {
            "MunifTanjim/nui.nvim",
            "rcarriga/nvim-notify",
        }
    })

    -- Show Keybinds!
    use {
        "folke/which-key.nvim",
        config = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 300
            require("which-key").setup {
                -- your configuration comes here
                -- or leave it empty to use the default settings
                -- refer to the configuration section below
            }
        end
    }


    -- LSP Zero
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' },             -- Required
            { 'williamboman/mason.nvim' },           -- Optional
            { 'williamboman/mason-lspconfig.nvim' }, -- Optional
            { 'jose-elias-alvarez/null-ls.nvim' },   -- NULL LS Support
            { 'jay-babu/mason-null-ls.nvim' },       -- NULL LS + Mason Support

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },         -- Required
            { 'hrsh7th/cmp-nvim-lsp' },     -- Required
            { 'hrsh7th/cmp-buffer' },       -- Optional
            { 'hrsh7th/cmp-path' },         -- Optional
            { 'saadparwaiz1/cmp_luasnip' }, -- Optional
            { 'hrsh7th/cmp-nvim-lua' },     -- Optional

            -- Snippets
            { 'L3MON4D3/LuaSnip' },             -- Required
            { 'rafamadriz/friendly-snippets' }, -- Optional
        }
    }
end)

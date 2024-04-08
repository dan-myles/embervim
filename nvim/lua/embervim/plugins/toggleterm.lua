return {
  {
    'akinsho/toggleterm.nvim',
    lazy = false,
    version = "*",
    keys = {
      { "<C-t>", "<cmd>:ToggleTerm<CR>", desc = "Toggle Terminal" },
    },
    config = function()
      require('toggleterm').setup({
        shell = "nu",
        persist_size = false,
        start_in_insert = true,
      })
    end,
  },
  {
    "ryanmsnyder/toggleterm-manager.nvim",
    lazy = false,
    keys = {
      { "<leader>t", "<cmd>lua require('toggleterm-manager').open({previewer = false, sorting_strategy='ascending', layout_config={height=25, width=70, prompt_position='top'}})<CR>", desc = "Toggle Terminal" },
    },
    dependencies = {
      "akinsho/nvim-toggleterm.lua",
      "nvim-telescope/telescope.nvim",
      "nvim-lua/plenary.nvim", -- only needed because it's a dependency of telescope
    },
    config = function()
      require("toggleterm-manager").setup({})
    end,
  }
}


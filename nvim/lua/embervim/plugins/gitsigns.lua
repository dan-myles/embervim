return {
  "lewis6991/gitsigns.nvim",
  lazy = true,
  event = { "BufReadPost", "BufNewFile" },
  config = function()
    require('gitsigns').setup({})
  end
}

return {
  -- Safe delete buffer & preserve window layout
  "famiu/bufdelete.nvim",
  lazy = true,
  event = { "BufEnter" },
  config = function()
    vim.cmd("cnoreabbrev d Bd")
  end,
}

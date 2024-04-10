return{
  -- A better way to navigate files with vim
  "ThePrimeagen/harpoon",
  lazy = true,
  keys = {
    { "<C-e>", "<cmd>lua require('harpoon.ui').toggle_quick_menu()<CR>", desc = "Toggle Bookmark Window" },
    { "<leader>m", "<cmd>lua require('harpoon.mark').add_file()<CR>", desc = "Bookmark Current File" },
    { "<leader>1", "<cmd>lua require('harpoon.ui').nav_file(1)<CR>", desc = "Navigate to Bookmark 1" },
    { "<leader>2", "<cmd>lua require('harpoon.ui').nav_file(2)<CR>", desc = "Navigate to Bookmark 2" },
    { "<leader>3", "<cmd>lua require('harpoon.ui').nav_file(3)<CR>", desc = "Navigate to Bookmark 3" },
    { "<leader>4", "<cmd>lua require('harpoon.ui').nav_file(4)<CR>", desc = "Navigate to Bookmark 4" },
  },
  config = function()
    require("harpoon").setup()
  end,
}

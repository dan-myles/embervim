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
    { "<leader>5", "<cmd>lua require('harpoon.ui').nav_file(5)<CR>", desc = "Navigate to Bookmark 5" },
    { "<leader>6", "<cmd>lua require('harpoon.ui').nav_file(6)<CR>", desc = "Navigate to Bookmark 6" },
    { "<leader>7", "<cmd>lua require('harpoon.ui').nav_file(7)<CR>", desc = "Navigate to Bookmark 7" },
    { "<leader>8", "<cmd>lua require('harpoon.ui').nav_file(8)<CR>", desc = "Navigate to Bookmark 8" },
    { "<leader>9", "<cmd>lua require('harpoon.ui').nav_file(9)<CR>", desc = "Navigate to Bookmark 9" },
    { "<leader>0", "<cmd>lua require('harpoon.ui').nav_file(0)<CR>", desc = "Navigate to Bookmark 10" },
    { "<C-j>", "<cmd>lua require('harpoon.ui').nav_next()<CR>", desc = "Next Bookmark" },
    { "<C-k>", "<cmd>lua require('harpoon.ui').nav_prev()<CR>", desc = "Previous Bookmark" },
  },
  config = function()
    require("harpoon").setup()
  end,
}

return {
  -- Breadcrumbs
  {
    "utilyre/barbecue.nvim",
    name = "barbecue",
    version = "*",
		lazy = false,
    dependencies = {
      "SmiteshP/nvim-navic",
      "nvim-tree/nvim-web-devicons", -- optional dependency
    },
		config = function()
			require("barbecue").setup({
				show_dirname = false,
				show_navic = false,
				create_autocmd = true,
				theme = "auto",
				exclude_filetypes = {
					"oil",
					"alpha",
					"netrw",
					"neo-tree",
				},
			})
		end
  },
}

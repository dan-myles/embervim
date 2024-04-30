return {
	-- A better way to navigate files with vim
	"ThePrimeagen/harpoon",
	lazy = true,
	keys = {
		{
			"<C-e>",
			function()
				require("harpoon.ui").toggle_quick_menu()
			end,
			desc = "Toggle Bookmark Window",
		},
		{
			"<leader>m",
			function()
				require("harpoon.mark").add_file()
			end,
			desc = "Bookmark Current File",
		},
		{
			"<leader>1",
			function()
				require("harpoon.ui").nav_file(1)
			end,
			desc = "Navigate to Bookmark 1",
		},
		{
			"<leader>2",
			function()
				require("harpoon.ui").nav_file(2)
			end,
			desc = "Navigate to Bookmark 2",
		},
		{
			"<leader>3",
			function()
				require("harpoon.ui").nav_file(3)
			end,
			desc = "Navigate to Bookmark 3",
		},
		{
			"<leader>4",
			function()
				require("harpoon.ui").nav_file(4)
			end,
			desc = "Navigate to Bookmark 4",
		},
		{
			"<leader>5",
			function()
				require("harpoon.ui").nav_file(5)
			end,
			desc = "Navigate to Bookmark 5",
		},
		{
			"<leader>6",
			function()
				require("harpoon.ui").nav_file(6)
			end,
			desc = "Navigate to Bookmark 6",
		},
		{
			"<leader>7",
			function()
				require("harpoon.ui").nav_file(7)
			end,
			desc = "Navigate to Bookmark 7",
		},
		{
			"<leader>8",
			function()
				require("harpoon.ui").nav_file(8)
			end,
			desc = "Navigate to Bookmark 8",
		},
		{
			"<leader>9",
			function()
				require("harpoon.ui").nav_file(9)
			end,
			desc = "Navigate to Bookmark 9",
		},
		{
			"<leader>0",
			function()
				require("harpoon.ui").nav_file(0)
			end,
			desc = "Navigate to Bookmark 10",
		},
		{
			"<C-j>",
			function()
				require("harpoon.ui").nav_next()
			end,
			desc = "Next Bookmark",
		},
		{
			"<C-k>",
			function()
				require("harpoon.ui").nav_prev()
			end,
			desc = "Previous Bookmark",
		},
		{
			"<leader>m",
			function()
				require("harpoon.mark").add_file()
			end,
			desc = "Bookmark Current File",
		},
	},
	config = function()
		require("harpoon").setup()
	end,
}

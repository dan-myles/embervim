return {
  -- Vim Markdown (MD Preview)
  {
    "iamcco/markdown-preview.nvim",
		lazy = true,
		ft = { "markdown" },
		keys = {
			{ "<leader>mp", "<cmd>MarkdownPreview<CR>", desc = "Start Preview" },
			{ "<leader>ms", "<cmd>MarkdownPreviewStop<CR>", desc = "Stop Preview" },
			{ "<leader>mt", "<cmd>MarkdownPreviewToggle<CR>", desc = "Toggle Preview" }
		},
    build = "cd app && npm install",
    init = function() 
			vim.g.mkdp_filetypes = { "markdown" } 
		end
  },
}

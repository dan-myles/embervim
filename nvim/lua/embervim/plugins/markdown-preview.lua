return {
	"iamcco/markdown-preview.nvim",
	ft = { "markdown", "mdx" },
	cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
	build = function()
		require("lazy").load({ plugins = { "markdown-preview.nvim" } })
		vim.fn["mkdp#util#install"]()
	end,
	keys = {
		{
			"<leader>mp",
			ft = "markdown",
			"<cmd>MarkdownPreviewToggle<cr>",
			desc = "Markdown Preview Toggle",
		},
	},
	config = function()
		vim.cmd([[do FileType]])
	end,
}

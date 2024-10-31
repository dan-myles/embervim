return {
	"folke/noice.nvim",
	lazy = true,
	event = { "VimEnter" },
	dependencies = {
		"MunifTanjim/nui.nvim",
	},
	config = function()
		require("noice").setup({
			lsp = {
				progress = {
					enabled = true,
					view = "mini",
				},
				override = {
					["vim.lsp.util.convert_input_to_markdown_lines"] = true,
					["vim.lsp.util.stylize_markdown"] = true,
					["cmp.entry.get_documentation"] = true,
				},
				hover = { enabled = false },
				signature = { enabled = false },
			},
			presets = {
				bottom_search = false,
				command_palette = false,
				long_message_to_split = true,
				inc_rename = false,
				lsp_doc_border = false,
			},
			messages = {
				enabled = true,
			},
			routes = {
				{ filter = { event = "notify", find = "No code actions available" }, skip = true },
			},
		})
	end,
}

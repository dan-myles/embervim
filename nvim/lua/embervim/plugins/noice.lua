return {
	-- Noice NVIM (UI)
	"folke/noice.nvim",
	lazy = true,
	event = { "VimEnter" },
	dependencies = {
		"MunifTanjim/nui.nvim",
	},
	config = function()
		require("noice").setup({
			lsp = {
				-- override markdown rendering so that **cmp** and other plugins use **Treesitter**
				progress = { enabled = true },
				override = {
					["vim.lsp.util.convert_input_to_markdown_lines"] = true,
					["vim.lsp.util.stylize_markdown"] = true,
					["cmp.entry.get_documentation"] = true,
				},
				hover = { enabled = false },
				signature = { enabled = false },
			},
			-- you can enable a preset for easier configuration
			presets = {
				bottom_search = false, -- use a classic bottom cmdline for search
				command_palette = false, -- position the cmdline and popupmenu together
				long_message_to_split = true, -- long messages will be sent to a split
				inc_rename = false, -- enables an input dialog for inc-rename.nvim
				lsp_doc_border = false, -- add a border to hover docs and signature help
			},
			cmdline = {
				format = {
					cmdline = { icon = ">" },
					search_down = { icon = "🔍⌄" },
					search_up = { icon = "🔍⌃" },
					filter = { icon = "$" },
					lua = { icon = "☾" },
					help = { icon = "?" },
				},
			},
			format = {
				level = {
					icons = {
						error = "✖",
						warn = "▼",
						info = "●",
					},
				},
			},
			popupmenu = {
				kind_icons = false,
			},
			messages = {
				enabled = true,
			},
			inc_rename = {
				cmdline = {
					format = {
						IncRename = { icon = "⟳" },
					},
				},
			},
		})
	end,
}

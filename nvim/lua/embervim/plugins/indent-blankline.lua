return {
	-- Indent Blankline
	{ 
		"lukas-reineke/indent-blankline.nvim",
		lazy = true,
		event = { "BufWinEnter" },
		config = function()
			require("ibl").setup({
				indent = { char = '▏'},
				scope = {
					enabled = true,
					char = nil,
					show_start = false,
					show_end = true,
					injected_languages = true,
					highlight = "IblScope",
					priority = 1024,
					include = {
						node_type = {},
					},
					exclude = {
						language = {},
						node_type = {
							["*"] = {
								"source_file",
								"program",
							},
							lua = {
								"chunk",
							},
							python = {
								"module",
							},
						},
					},
				},
			})
		end
	}
}

return {
	"youyoumu/pretty-ts-errors.nvim",
  keys = {
    { "<C-l>", function() require("pretty-ts-errors").show_formatted_error() end, desc = "PrettyTSErrors: Show formatted error" },
  },
	opts = {
		executable = "pretty-ts-errors-markdown", -- Path to the executable
		float_opts = {
			border = "rounded", -- Border style for floating windows
			max_width = 80, -- Maximum width of floating windows
			max_height = 20, -- Maximum height of floating windows
			wrap = false, -- Whether to wrap long lines
		},
		auto_open = false, -- Automatically show errors on hover
		lazy_window = false, -- Open the floating window only after errors are formatted
	},
}

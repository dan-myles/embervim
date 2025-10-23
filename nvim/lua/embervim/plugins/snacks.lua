return {
	"folke/snacks.nvim",
	opts = {
		scroll = {
			animate = {
				duration = { step = 10, total = 75 },
				easing = "linear",
			},
			-- faster animation when repeating scroll after delay
			animate_repeat = {
				delay = 100, -- delay in ms before using the repeat animation
				duration = { step = 5, total = 25 },
				easing = "linear",
			},
			-- what buffers to animate
			filter = function(buf)
				return vim.g.snacks_scroll ~= false
					and vim.b[buf].snacks_scroll ~= false
					and vim.bo[buf].buftype ~= "terminal"
					and vim.bo[buf].buftype ~= "oil"
			end,
		},
	},
}

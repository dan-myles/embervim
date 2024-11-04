return {
	-- Custom Global Statusline (Lualine)
	"nvim-lualine/lualine.nvim",
	lazy = true,
	event = { "VimEnter" },
	config = function()
		require("lualine").setup({
			options = {
				icons_enabled = true,
				theme = "auto",
				globalstatus = true,
				component_separators = { left = "", right = "" },
				section_separators = { left = "", right = " " },
				disabled_filetypes = {
					statusline = {
						"alpha",
						"oil",
						"TelescopePrompt",
					},
					winbar = {
						"netrw",
					},
				},
			},
			sections = {
				lualine_a = {
					-- {
					-- 	function()
					-- 		return "embervim"
					-- 	end,
					-- },
				},
				lualine_b = {
					{
						function()
							local cwd = vim.fn.getcwd()
							local last_dir = cwd:match("([^/]+)$")
							return last_dir
						end,
						separator = "",
					},
					{
						"branch",
						separator = { left = "", right = "" },
						icon = "~ ",
						padding = { left = 0, right = 1 },
					},
				},
				lualine_c = {
					{
						"diagnostics",
						symbols = {
							error = " ",
							warn = " ",
							info = " ",
							hint = " ",
						},
					},
				},
				lualine_x = {
					{
						"diff",
						symbols = {
							added = " ",
							modified = " ",
							removed = " ",
						},
						source = function()
							local gitsigns = vim.b.gitsigns_status_dict
							if gitsigns then
								return {
									added = gitsigns.added,
									modified = gitsigns.changed,
									removed = gitsigns.removed,
								}
							end
						end,
					},
					{
						function()
							local msg = ""
							local buf_ft = vim.api.nvim_buf_get_option(0, "filetype")
							local clients = vim.lsp.get_active_clients()
							if next(clients) == nil then
								return msg
							end

							for _, client in ipairs(clients) do
								local filetypes = client.config.filetypes
								if
									client.name ~= "tailwindcss"
									and client.name ~= "copilot"
									and client.name ~= "emmet-ls"
									and client.name ~= "eslint"
								then
									if filetypes and vim.fn.index(filetypes, buf_ft) ~= -1 then
										return "[lsp]: " .. client.name
									end
								end
							end
							return msg
						end,
					},
				},
				lualine_y = {
					{
						"encoding",
						separator = "",
					},
					{
						"fileformat",
						icons_enabled = false,
					},
				},
				lualine_z = {},
			},
			tabline = {},
			extensions = {},
		})
	end,
}

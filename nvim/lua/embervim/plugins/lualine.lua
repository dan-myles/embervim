return {
	-- Custom Global Statusline (Lualine)
	{ 
		"nvim-lualine/lualine.nvim",
		lazy = true,
		event = { "VimEnter" },
		config = function()
			require('lualine').setup({
				options = {
					icons_enabled = true,
					theme = 'auto',
					globalstatus = true,
          component_separators = { left = '', right = '' },
					section_separators = { left = ' ', right = ' ' },
					disabled_filetypes = {
						statusline = {
						},
						winbar = {
              'netrw'
            },
					},
				},
				sections = {
					lualine_a = {
					},
					lualine_b = {
            {
              function()
                return "[embervim]"
              end,
              separator = "~",
            },
						{
							'branch',
              separator = { left = '', right = '' },
              icon = '',
						},
					},
					lualine_c = { 
            {
              'diff',
              separator = "-",
            }, 
            {
              'diagnostics',
              symbols = {error = 'E:', warn = 'W:', info = 'I:', hint = 'H:'},
            } 
          },
					lualine_x = {
            -- {
            --   'location',
            --   separator= "",
            -- },
						{
							function()
								local msg = ''
								local buf_ft = vim.api.nvim_buf_get_option(0, 'filetype')
								local clients = vim.lsp.get_active_clients()
								if next(clients) == nil then
									return msg
								end

                for _, client in ipairs(clients) do
                  local filetypes = client.config.filetypes
                  if client.name ~= 'null-ls' and client.name ~= 'copilot' then
                    if filetypes and vim.fn.index(filetypes, buf_ft) ~= -1 then
                      return '[lsp]: ' .. client.name
                    end
                  end
                end
								return msg
							end,
						}
					},
					lualine_y = {
            {
              'encoding',
              separator = "",
            },
            {
              'fileformat',
              icons_enabled = false,
            },
					},
					lualine_z = {
          },
				},
        tabline = {},
        extensions = {},
			})
		end
	}
}

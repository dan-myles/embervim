require('lualine').setup({
  options = {
    icons_enabled = true,
    theme = 'auto',
    component_separators = '|',
    section_separators = { left = '', right = '' },
    disabled_filetypes = {
      statusline = {
        'alpha',
      },
      winbar = {},
    },
  },
  sections = {
    lualine_a = {
      {
        'mode',
        separator = { left = '', right = ' ' },
        right_padding = 2,
      },
    },
    lualine_b = {
      {
        'filename',
        separator = { right = '  ' },
        color = { gui = 'bold' }
      },
      'diff',
    },
    lualine_c = { 'diagnostics' },
    lualine_x = {
      {
        function()
          local msg = 'No Active Lsp'
          local buf_ft = vim.api.nvim_buf_get_option(0, 'filetype')
          local clients = vim.lsp.get_active_clients()
          if next(clients) == nil then
            return msg
          end
          for _, client in ipairs(clients) do
            local filetypes = client.config.filetypes
            if filetypes and vim.fn.index(filetypes, buf_ft) ~= -1 then
              return client.name
            end
          end
          return msg
        end,
        icon = ' LSP:',
      }
    },
    lualine_y = {
      {
        'filetype',
        separator = { left = '  ' },
      }
    },
    lualine_z = { 'branch' },
  },
  inactive_sections = {
    lualine_a = { 'filename' },
    lualine_b = {},
    lualine_c = {},
    lualine_x = {},
    lualine_y = {},
    lualine_z = { 'location' },
  },
  tabline = {},
  extensions = {},
})

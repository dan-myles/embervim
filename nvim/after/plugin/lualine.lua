require('lualine').setup({
  options = {
    icons_enabled = true,
    theme = 'auto',
    globalstatus = true,
    component_separators = '⏽',
    section_separators = { left = '', right = '' },
    disabled_filetypes = {
      statusline = {
        'oil',
        'alpha',
        'TelescopePrompt'
      },
      winbar = {},
    },
  },
  sections = {
    lualine_a = {
      function()
        return "embervim"
      end,
    },
    lualine_b = {
      {
        'branch',
        color = { gui = 'bold' }
      },
    },
    lualine_c = { 'diff', 'diagnostics' },
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
        separator = { left = ' ', right = '' },
      }
    },
    lualine_z = { 'location' },
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

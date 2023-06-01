-- This is the main "Themes" file, where specific theme settings can be setup
-- ie. transparent, italic comments, etc.
-- This file will also **set** the colorschem!


local c = require('vscode.colors').get_colors()
require('vscode').setup({
  transparent = false,
  italic_comments = true,
  disable_nvimtree_bg = true,
  group_overrides = {
    Cursor = { fg = c.vscDarkBlue, bg = c.vscLightGreen, bold = true }
  },
  color_overrides = {
    vscDarkYellow = '#aaaaaa',
  },
})


vim.cmd.colorscheme "kanagawa"

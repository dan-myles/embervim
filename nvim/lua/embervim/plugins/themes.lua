return {
  -- VSCode Dark +
  {
    "Mofiqul/vscode.nvim",
    lazy = false,
    priority = 1000,
    config = function ()
	    local c = require('vscode.colors').get_colors()
	    require('vscode').setup({
		    transparent = false,
		    italic_comments = false,
		    disable_nvimtree_bg = true,
		    group_overrides = {
			    Cursor = { fg = c.vscDarkBlue, bg = c.vscLightGreen, bold = true }
		    },
		    color_overrides = {
			    vscDarkYellow = '#aaaaaa',
		    },
	    })
    end,
  },

  -- Catppuccin
  {
	  "catppuccin/nvim",
	  lazy = false,
    name = "catppuccin"
  },

  -- Rose Pine
  {
    'rose-pine/neovim',
    lazy = false,
    name = 'rose-pine',
    config = function()
      vim.cmd('colorscheme rose-pine')
    end,
  },

  -- Kanagawa
  {
    'rebelot/kanagawa.nvim',
    lazy = false,
    name = 'kanagawa'
  },
}

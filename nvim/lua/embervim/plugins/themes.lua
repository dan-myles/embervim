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
    priority = 1000,
    name = "catppuccin"
  },

  -- Rose Pine
  {
    'rose-pine/neovim',
    lazy = false,
    priority = 1000,
    name = 'rose-pine',
  },

  -- Kanagawa
  {
    'rebelot/kanagawa.nvim',
    lazy = false,
    priority = 1000,
    name = 'kanagawa'
  },

  -- Monokai
  {
    'loctvl842/monokai-pro.nvim',
    lazy = false,
    priority = 1000,
    config = function()
      require('monokai-pro').setup()
      vim.cmd('colorscheme monokai-pro')
    end,
  },
}

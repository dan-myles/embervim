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

	    vim.cmd.colorscheme "vscode"
    end,
  },

  -- Catppuccin
  {
	  "catppuccin/nvim",
	  lazy = true,
    name = "catppuccin"
  },

  -- Rose Pine
  {
    'rose-pine/neovim',
    lazy = true,
    name = 'rose-pine'
  },

  -- Kanagawa
  {
    'rebelot/kanagawa.nvim',
    lazy = true,
    name = 'kanagawa'
  },
}

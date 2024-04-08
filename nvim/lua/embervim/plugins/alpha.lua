return {
  {
    "goolord/alpha-nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    keys = {
      { "<C-h>", "<cmd>Alpha<CR>", desc = "Go home" },
    },
    lazy = false,
    config = function()
      local alpha = require('alpha')
      local dashboard = require('alpha.themes.dashboard')

      local dragon = {
        ' `""*$b..',
        '      ""*$o.',
        '          "$$o.',
        '            "*$$o.',
        '               "$$$o.',
        '                 "$$$$bo...       ..o:',
        '                   "$$$$$$$$booocS$$$    ..    ,.',
        '                ".    "*$$$$SP     V$o..o$$. .$$$b',
        '                 "$$o. .$$$$$o. ...A$$$$$$$$$$$$$$b',
        '           ""bo.   "*$$$$$$$$$$$$$$$$$$$$P*$$$$$$$$:',
        '              "$$.    V$$$$$$$$$P"**""*""   VP  * "l',
        '                "$$$o.4$$$$$$$$X',
        '                 "*$$$$$$$$$$$$$AoA$o..oooooo..           .b',
        '                        .X$$$$$$$$$$$P""     ""*oo,,     ,$P',
        '                       $$P""V$$$$$$$:    .        ""*****"',
        '                     .*"    A$$$$$$$$o.4;      .',
        '                          .oP""   "$$$$$$b.  .$;',
        '                                   A$$$$$$$$$$P',
        '                                   "  "$$$$$P"',
        '                                       $$P*"',
        '                                      .$"',
        '                                      "',
      }

      dashboard.section.header.val = dragon

      -- Setting dashboard buttons
      dashboard.section.buttons.val = {
        dashboard.button("n", "  > New File", ":ene <BAR> startinsert <CR>"),
        dashboard.button("f", "  > Open File", ":Telescope find_files<CR>"),
        dashboard.button("o", "  > Open Folder", ":Telescope neovim-project discover<CR>"),
        dashboard.button("r", "  > Recent Projects", ":Telescope neovim-project history<CR>"),
        { type = "text", val = " ", opts = { hl = "SpecialComment", position = "center" } },
        dashboard.button("s", "  > Settings", ":e $MYVIMRC | :cd %:p:h | :Oil<CR>"),
        dashboard.button("u", "  > Update Plugins", ":Lazy update<CR>"),
        dashboard.button("q", "  > Quit", ":qa<CR>"),
      }


      -- Registering the dashboard
      alpha.setup(dashboard.opts)
    end
  },

  {
    "famiu/bufdelete.nvim",
    lazy = false,
    config = function()
      vim.cmd("cnoreabbrev q Bd")
    end,
  }
}

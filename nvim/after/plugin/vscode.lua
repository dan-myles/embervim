vim.o.background = "dark"


local c = require('vscode.colors').get_colors()

require('vscode').setup({
    transparent = false,
    italic_comments = true,
    disable_nvimtree_bg = true,

    group_overrides = {
        Cursor = { fg=c.vscDarkBlue, bg=c.vscLightGreen, bold = true }
    },

    color_overrides = {
        vscLeftDark= '#000000',
    },
})

require('vscode').load()

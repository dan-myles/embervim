vim.o.background = "dark"


local c = require('vscode.colors').get_colors()

require('vscode').setup({
    transparent = true,
    italic_comments = true,
    disable_nvimtree_bg = true,

    group_overrides = {
        Cursor = { fg=c.vscDarkBlue, bg=c.vscLightGreen, bold = true }

    }
})

require('vscode').load()

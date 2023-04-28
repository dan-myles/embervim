require("zen-mode").setup({
    window = {
        backdrop = 0.85,
        height = 1,
        width = 80,
        options = {
            cursorcolumn = false,
            signcolumn = "no",
        },
    },
    plugins = {
        options = {
            enabled = true,
            ruler = false,
        },
        tmux = { enabled = true },
        kitty = {
            enabled = true,
            font = "+20",
        },
    },
    on_open = function(win)
        vim.cmd("set colorcolumn=0")
        vim.cmd("TransparentEnable")
    end,
    on_close = function(win)
        vim.cmd("TransparentDisable")
        vim.cmd("set colorcolumn=80")
    end,
})

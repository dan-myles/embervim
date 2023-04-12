local alpha = require('alpha')
local dashboard = require('alpha.themes.dashboard')

-- Dashboard header
dashboard.section.header.val = {
    "                    ██         ██                          ",
    "                  ▓▓██         ██                          ",
    "                ██████  ██      ██                         ",
    "              ██████  ▓▓▓▓      ████                       ",
    "              ████▓▓▒▒██        ██████                     ",
    "            ██████  ████  ██    ████████                   ",
    "            ██████  ████  ██▒▒    ████████                 ",
    "            ██████  ████  ▒▒██▓▓  ▓▓████████               ",
    "           ██████  ░░██    ██████  ████████▒▒              ",
    "        ░░  ██████    ░░██  ▓▓████░░  ████████             ",
    "        ██▒▒██████          ▒▒██████  ████████▒▒           ",
    "          ██████████      ██▓▓██████  ██▓▓██████  ▓▓       ",
    "          ░░████████▒▒      ████████      ██████  ██▓▓     ",
    "      ▓▓    ██████████▒▒    ████████      ████████████▒▒   ",
    "      ██      ██████████▓▓  ████████  ▓▓  █████████████    ",
    "      ▓▓██      ██████████████████████▓▓  █████████▓▓██    ",
    "        ██▓▓      ██████████▓▓████████▒▒  ███████████      ",
    "        ▓▓██        ██████████▓▓██████  ▒▒████████▓▓       ",
    "          ██▓▓        ████████████▒▒    ███████████        ",
}

-- Setting dashboard buttons
dashboard.section.buttons.val = {
    dashboard.button("n", "  > New", ":ene <BAR> startinsert <CR>"),
    dashboard.button("r", "  > Recent", ":Telescope oldfiles<CR>"),
    dashboard.button("f", "  > Find", ":Telescope find_files<CR>"),
    { type = "text", val = " ", opts = { hl = "SpecialComment", position = "center" } },
    dashboard.button("s", "  > Settings", ":e $MYVIMRC | :cd %:p:h | :e . | wincmd k | pwd<CR><CR>"),
    dashboard.button("u", "  > Update Plugins", ":Lazy update<CR>"),
    dashboard.button("q", "  > Quit", ":qa<CR>"),
}

-- When the last buffer is deleted, open the dashboard
local alpha_on_empty = vim.api.nvim_create_augroup("alpha_on_empty", { clear = true })
vim.api.nvim_create_autocmd("User", {
    pattern = "BDeletePost*",
    group = alpha_on_empty,
    callback = function(event)
        local fallback_name = vim.api.nvim_buf_get_name(event.buf)
        local fallback_ft = vim.api.nvim_buf_get_option(event.buf, "filetype")
        local fallback_on_empty = fallback_name == "" and fallback_ft == ""

        if fallback_on_empty then
            vim.cmd("Alpha")
            vim.cmd(event.buf .. "bwipeout")
        end
    end,
})

-- Registering the dashboard
alpha.setup(dashboard.opts)

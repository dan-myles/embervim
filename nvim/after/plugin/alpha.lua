local alpha = require('alpha')
local dashboard = require('alpha.themes.dashboard')

-- Dashboard headers
local flame = {
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

-- Actually setting the dashboard here
dashboard.section.header.val = dragon

-- Setting dashboard buttons
dashboard.section.buttons.val = {
    dashboard.button("n", "  > New", ":ene <BAR> startinsert <CR>"),
    dashboard.button("r", "  > Recent", ":Telescope oldfiles<CR>"),
    dashboard.button("f", "  > Find", ":Telescope find_files<CR>"),
    dashboard.button("e", "  > Explorer", ":Telescope file_browser<CR>"),
    { type = "text", val = " ", opts = { hl = "SpecialComment", position = "center" } },
    dashboard.button("s", "  > Settings", ":Telescope file_browser path=$HOME/.config/nvim/<CR>"),
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
            vim.cmd("only")
            -- vim.cmd(event.buf .. "bwipeout")
        end
    end,
})

-- Registering the dashboard
alpha.setup(dashboard.opts)

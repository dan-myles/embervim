local alpha = require('alpha')
local dashboard = require('alpha.themes.dashboard')

dashboard.section.header.val = {
"                    ██         ██                          ",
"                  ▓▓██         ██                          ",
"                ██████  ██      ██                          ",
"              ██████  ▓▓▓▓      ████                        ",
"              ████▓▓▒▒██        ██████                      ",
"            ██████  ████  ██    ████████                    ",
"            ██████  ████  ██▒▒    ████████                  ",
"            ██████  ████  ▒▒██▓▓  ▓▓████████                ",
"           ██████  ░░██    ██████  ████████▒▒              ",
"        ░░  ██████    ░░██  ▓▓████░░  ████████              ",
"        ██▒▒██████          ▒▒██████  ████████▒▒             ",
"          ██████████      ██▓▓██████  ██▓▓██████  ▓▓         ",
"          ░░████████▒▒      ████████      ██████  ██▓▓     ",
"      ▓▓    ██████████▒▒    ████████      ████████████▒▒   ",
"      ██      ██████████▓▓  ████████  ▓▓  █████████████   ",
"      ▓▓██      ██████████████████████▓▓  █████████▓▓██   ",
"        ██▓▓      ██████████▓▓████████▒▒  ███████████   ",
"        ▓▓██        ██████████▓▓██████  ▒▒████████▓▓ ",
"          ██▓▓        ████████████▒▒    ███████████ ",
-- "        ███████╗███╗   ███╗██████╗ ███████╗██████╗  ",
-- "        ██╔════╝████╗ ████║██╔══██╗██╔════╝██╔══██╗ ",
-- "        █████╗  ██╔████╔██║██████╔╝█████╗  ██████╔╝ ",
-- "        ██╔══╝  ██║╚██╔╝██║██╔══██╗██╔══╝  ██╔══██╗ ",
-- "        ███████╗██║ ╚═╝ ██║██████╔╝███████╗██║  ██║ ",
}

dashboard.section.buttons.val = {
    {type = "text", val = "File", opts = { hl = "SpecialComment", position="center" } },
    dashboard.button( "n", "  > New" , ":ene <BAR> startinsert <CR>"),
    dashboard.button( "r", "  > Recent"   , ":Telescope oldfiles<CR>"),
    dashboard.button( "f", "  > Find", ":Telescope find_files<CR>"),
    dashboard.button( "p", "  > Projects"   , ":lua require'telescope'.extensions.project.project{}<CR>"),
    {type = "text", val = " ", opts = { hl = "SpecialComment", position="center" } },
    {type = "text", val = " ", opts = { hl = "SpecialComment", position="center" } },
    {type = "text", val = "Configuration", opts = { hl = "SpecialComment", position="center" } },
    dashboard.button( "s", "  > Settings" , ":e $MYVIMRC | :cd %:p:h | :e . | wincmd k | pwd<CR>"),
    --dashboard.button( "u", "  > Update plugins", ":PackerSync<CR>"),  this is currently broken? not sure why but navigating to packer file and sourcing works...
    dashboard.button( "q", "  > Quit", ":qa<CR>"),

}

alpha.setup(dashboard.opts)



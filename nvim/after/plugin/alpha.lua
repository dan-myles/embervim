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
-- "        ███████╗███╗██  ███╗██████╗ ███████╗██████╗  ",
--     "        █████╗  ████╔██║██████╔╝█████╗  ██████╔╝ ",
-- "        ██╔══╝  ██║╚   ╔╝██║██╔══██╗██╔══╝  ██╔══██╗ ",
-- "        ██╔════╝████╗  ████║██╔══██╗██╔════╝██╔══██╗ ",
-- "        ███████╗██║ ╚═ ╝ ██║██████╔╝███████╗██║  ██║ ",
}

dashboard.section.buttons.val = {
    {type = "text", val = "File", opts = { hl = "SpecialComment", position="center" } },
    dashboard.button( "n", "  > New" , ":ene <BAR> startinsert <CR>"),
    dashboard.button( "r", "󰈢  > Recent"   , ":Telescope oldfiles<CR>"),
    dashboard.button( "f", "  > Find", ":Telescope find_files<CR>"),
    dashboard.button( "p", "  > Projects"   , ":lua require'telescope'.extensions.project.project{}<CR>"),
    {type = "text", val = " ", opts = { hl = "SpecialComment", position="center" } },
    {type = "text", val = " ", opts = { hl = "SpecialComment", position="center" } },
    {type = "text", val = "Configuration", opts = { hl = "SpecialComment", position="center" } },
    dashboard.button( "s", "  > Settings" , ":e $MYVIMRC | :cd %:p:h | :e . | wincmd k | pwd<CR><CR>"),
    --dashboard.button( "u", "  > Update plugins", ":PackerSync<CR>"),  this is currently broken? not sure why but navigating to packer file and sourcing works...
    dashboard.button( "q", "  > Quit", ":qa<CR>"),
}

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


alpha.setup(dashboard.opts)


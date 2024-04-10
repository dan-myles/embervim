-- Global Auto Commands to be defined here
-- Filetype specific autocommands go in plugin/*.lua
local autocmd = vim.api.nvim_create_autocmd
local augroup = vim.api.nvim_create_augroup
local general = augroup("General Settings", { clear = true })

-- Disable new line comment
-- autocmd("BufEnter", {
--   callback = function()
--     vim.opt.formatoptions:remove { "c", "r", "o" }
--   end,
--   group = general,
--   desc = "Disable New Line Comment",
-- })

-- Lint
autocmd({"TextChanged", "BufWritePost"}, {
  callback = function()
    require("lint").try_lint()
  end,
  group = general,
  desc = "Lint on File Save/Text Change",
})

-- Disable winbar in netrw
autocmd("FileType", {
  callback = function()
    vim.opt_local.winbar = "netrw"
    vim.opt_local.fillchars:append { eob = " " }
    vim.opt_local.colorcolumn = ""
  end,
  pattern = "netrw",
  group = general,
  desc = "Disable Winbar in NetRW",
})

-- Disable winbar in alpha
autocmd("FileType", {
  callback = function()
    vim.opt_local.winbar = " "
    vim.opt_local.fillchars:append { eob = " " }
    vim.opt_local.colorcolumn = ""
  end,
  pattern = "alpha",
  group = general,
  desc = "Disable Winbar in NetRW",
})

-- Disable winbar in toggleterm
autocmd("FileType", {
  callback = function()
    vim.opt_local.winbar = " "
    vim.opt_local.fillchars:append { eob = " " }
    vim.opt_local.colorcolumn = ""
  end,
  pattern = "toggleterm",
  group = general,
  desc = "Disable Winbar in NetRW",
})

-- Not sure how i feel about this
autocmd("User", {
  pattern = { "SessionLoadPost" },
  callback = function()
      local timer = vim.uv.new_timer()
      timer:start(150, 0, vim.schedule_wrap(function()
        vim.cmd("Oil")
      end))
    end,
  group = general,
  desc = "Open Oil after Session Load",
})

-- Remove trailing whitespace on save
autocmd({ "BufWritePre" }, {
  pattern = { "*" },
  command = [[%s/\s\+$//e]],
  group = general,
  desc = "Remove trailing whitespace on save",
})

-- Make sure alpha opens when buffers are cleared
autocmd("User", {
  pattern = "BDeletePost*",
  callback = function(event)
    local fallback_name = vim.api.nvim_buf_get_name(event.buf)
    local fallback_ft = vim.api.nvim_buf_get_option(event.buf, "filetype")
    local fallback_on_empty = fallback_name == "" and fallback_ft == ""

    if fallback_on_empty then
    end
  end,
  group = general,
})


-- Setting some Globals for window animations
vim.o.winwidth = 10
vim.o.winminwidth = 10
vim.o.equalalways = false

require('windows').setup({
  ignore = {
    filetype = {
      "lspsagaoutline",
    },
  },
  animation = {
    enable = true,
    fps = 60,
  }
})

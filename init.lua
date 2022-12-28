require "plugin.init"

vim.cmd("colorscheme habamax")
vim.opt.tabstop = 2
vim.opt.shiftwidth =2
vim.opt.number = true
vim.opt.mouse = ""
vim.opt.cursorline = false
vim.opt.relativenumber = false
vim.opt.cursorcolumn = false
vim.opt.showcmd = true
vim.opt.ruler = true

require("mason").setup()


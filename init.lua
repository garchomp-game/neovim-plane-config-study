require "plugin.init"
local packer = require 'packer'

vim.opt.tabstop = 2
vim.opt.shiftwidth =2
vim.opt.number = true
vim.opt.mouse = ""
vim.opt.cursorline = false
vim.opt.relativenumber = false
vim.opt.cursorcolumn = false
vim.opt.showcmd = true
vim.opt.ruler = true
packer.init {
	compile_path = require('packer.util').join_paths(vim.fn.stdpath('data'), 'plugin', 'packer_compiled.lua')
}

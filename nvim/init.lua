-- Use tabs instead of spaces. Indent is two spaces
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.smartindent = true

-- Turn on line numbers
vim.opt.number = true

-- Disable line wrapping
vim.opt.wrap = false

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Lazy - plugin manager for Neovim
require("config.lazy")

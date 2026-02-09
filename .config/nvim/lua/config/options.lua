-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"

vim.opt.scrolloff = 10
vim.opt.textwidth = 100
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.showcmd = true
vim.opt.mouse = ""
vim.opt.number = true
vim.opt.ignorecase = true -- case insensitve pattern searching; can be overruled using \C

vim.g.lazyvim_prettier_needs_config = true
vim.g.lazyvim_picker = "telescope"

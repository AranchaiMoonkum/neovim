local opt = vim.opt

vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

opt.showtabline = 2
opt.sessionoptions = 'curdir,folds,globals,help,tabpages,terminal,winsize'

opt.expandtab = true
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4

opt.swapfile = false
opt.incsearch = true
opt.backup = false
opt.clipboard = "unnamedplus"
opt.cmdheight = 0
opt.completeopt = { "menuone", "noselect" }
opt.conceallevel = 0
opt.fileencoding = "utf-8"
opt.hlsearch = true
opt.ignorecase = true
opt.mouse = "a"
opt.pumheight = 10
opt.showmode = false
opt.smartindent = true
opt.breakindent = true
opt.smartcase = true
opt.splitbelow = true
opt.splitright = true
opt.termguicolors = true
opt.undofile = true
opt.number = true
opt.relativenumber = true
opt.signcolumn = "yes"
opt.showcmd = true
opt.fillchars = { eob = " " }

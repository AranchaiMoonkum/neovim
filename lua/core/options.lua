vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
vim.g.have_nerd_font = true
vim.o.number = true
vim.o.relativenumber = true
vim.o.showmode = false
vim.o.breakindent = true
vim.o.undofile = true
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.signcolumn = "yes"
vim.o.splitright = true
vim.o.splitbelow = true

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.swapfile = false
vim.opt.incsearch = true
vim.opt.laststatus = 3
vim.opt.statusline = " %f %m %= %l,%c          %P "
vim.opt.wrap = false
vim.opt.termguicolors = true
-- vim.opt.guicursor = "n-v-c:block"
vim.opt.fillchars = { eob = " " }

vim.schedule(function()
  vim.o.clipboard = "unnamedplus"
end)

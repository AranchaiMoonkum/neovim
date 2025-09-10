vim.keymap.set("i", "jk", "<esc>") -- exit insert mode
vim.keymap.set("v", "J", ":m '>+1<cr>gv=gv") -- move code up
vim.keymap.set("v", "K", ":m '<-2<cr>gv=gv") -- move code down
vim.keymap.set("x", "<leader>p", '_dP') -- paste without deleting previous buffer
vim.keymap.set("n", "yc", "yygccp", { remap = true }) -- mini version control
vim.keymap.set("v", "<leader>C", "ygvgc`>p", { remap = true }) -- mini version control but in visual mode
vim.keymap.set("n", "<leader>fm", vim.lsp.buf.format) -- format code
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action) -- code action
vim.keymap.set("n", "<leader>e", "<cmd>Ex<cr>") -- open explorer
vim.keymap.set("n", "te", "<cmd>tabnew<cr>") -- open new tab
vim.keymap.set("n", "td", "<cmd>tabclose<cr>") -- close tab
vim.keymap.set("n", "to", "<cmd>tabonly<cr>") -- close all tabs except the current one

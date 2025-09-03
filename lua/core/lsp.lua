local cmp = require("blink.cmp")
local capabilities = cmp.get_lsp_capabilities()

vim.diagnostic.config({ virtual_text = true })

-- Show diagnostics if available, otherwise show hover
vim.keymap.set("n", "K", function()
	local line = vim.api.nvim_win_get_cursor(0)[1] - 1
	if vim.diagnostic.get(0, { lnum = line })[1] then
		vim.diagnostic.open_float()
	else
		vim.lsp.buf.hover()
	end
end, { desc = "Hover or show diagnostics" })

-- Attach LSP keymaps once per buffer
vim.api.nvim_create_autocmd("LspAttach", {
	callback = function(args)
		local opts = { buffer = args.buf }

		vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
		vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
	end,
})

-- Apply LSP config with cmp capabilities
vim.lsp.config("*", {
	capabilities = capabilities,
})

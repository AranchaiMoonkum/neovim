return {
  "mason-org/mason-lspconfig.nvim",
  dependencies = {
    "mason-org/mason.nvim",
    "neovim/nvim-lspconfig",
  },
  config = function()
    vim.diagnostic.config({ virtual_text = true })

    vim.keymap.set("n", "K", function()
      local diagnostics = vim.diagnostic.get(0, { lnum = vim.api.nvim_win_get_cursor(0)[1] - 1 })

      if #diagnostics > 0 then
        vim.diagnostic.open_float()
      else
        vim.lsp.buf.hover()
      end
    end)

    vim.keymap.set("n", "<leader>fm", vim.lsp.buf.format)
    vim.keymap.set("i", "<C-n>", function()
      return vim.fn.pumvisible() == 1 and "<C-n>" or "<C-x><C-o>"
    end, { expr = true })

    vim.keymap.set("i", "<C-p>", function()
      return vim.fn.pumvisible() == 1 and "<C-p>" or "<C-x><C-o>"
    end, { expr = true })

    vim.api.nvim_create_autocmd("LspAttach", {
      callback = function(args)
        vim.keymap.set("n", "gd", vim.lsp.buf.definition, { buffer = args.buf })
        vim.keymap.set("n", "gD", vim.lsp.buf.declaration, { buffer = args.buf })
      end,
    })

    require("mason").setup()
    require("mason-lspconfig").setup({
      ensure_installed = {
        "lua_ls",
        "angularls",
        "html",
        "cssls",
        "tailwindcss",
        "ts_ls",
        "jsonls",
        "marksman",
      },
      automatic_enable = true,
    })
  end,
}

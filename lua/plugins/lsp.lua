return {
  "mason-org/mason-lspconfig.nvim",
  dependencies = {
    "mason-org/mason.nvim",
    "neovim/nvim-lspconfig",
    "saghen/blink.cmp",
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

    vim.api.nvim_create_autocmd("LspAttach", {
      callback = function(args)
        vim.keymap.set("n", "gd", vim.lsp.buf.definition, { buffer = args.buf })
        vim.keymap.set("n", "gD", vim.lsp.buf.declaration, { buffer = args.buf })
      end,
    })

    local capabilities = require("blink.cmp").get_lsp_capabilities()

    require("mason").setup()
    require("mason-lspconfig").setup({
      automatic_enable = true,
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
      handlers = {
        function(server_name)
          require("lspconfig")[server_name].setup {
            capabilities = capabilities
          }
        end,
      },
    })
  end,
}

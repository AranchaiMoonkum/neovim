return {
  "mason-org/mason-lspconfig.nvim",
  dependencies = {
    "mason-org/mason.nvim",
    "neovim/nvim-lspconfig",
  },
  config = function()
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
        "biome",
      },
    })
  end,
}

vim.lsp.config("pylsp", {
  settings = {
    pylsp = {
      plugins = {
        pycodestyle = {
          ignore = { "E302", "E305", "E201", "E202" },
          maxLineLength = 100
        }
      }
    }
  }
})

return {
  "saghen/blink.cmp",
  dependencies = "rafamadriz/friendly-snippets",
  version = "1.*",
  opts = {
    keymap = { preset = "default" },
    appearance = { nerd_font_variant = "mono" },
    completion = {
      documentation = { auto_show = true },
      menu = {
        draw = {
          columns = {
            { "label",     "label_description", gap = 1 },
            { "kind" },
          },
        },
      },
    },
    sources = {
      default = { "lsp", "path", "snippets" },
    },
    fuzzy = { implementation = "prefer_rust" }
  },
}

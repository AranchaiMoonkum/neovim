return {
    "hrsh7th/nvim-cmp",
    dependencies = {
        -- sources
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/cmp-buffer",
        "FelipeLema/cmp-async-path",

        -- snippet
        { "L3MON4D3/LuaSnip", version = "v2.3", build = "make install_jsregexp" },

        -- other
        "onsails/lspkind.nvim",
    },
    config = function()
        local cmp = require "cmp"

        cmp.setup({
            preselect = "item",
            completion = {
                completeopt = "menu,menuone,noinsert"
            },
            sources = {
                { name = "nvim_lsp" },
                { name = "luasnip" },
                { name = "buffer" },
                { name = "async_path" },
            },
            snippet = {
                expand = function(args)
                    require "luasnip".lsp_expand(args.body)
                end,
            },
            mapping = cmp.mapping.preset.insert({}),
            formatting = {
                fields = { "abbr", "kind", "menu" },
                format = require "lspkind".cmp_format({
                    mode = "symbol_text", -- show only symbol annotations
                    maxwidth = 50, -- prevent the popup from showing more than provided characters
                    ellipsis_char = "...", -- when popup menu exceed maxwidth, the truncated part would show ellipsis_char instead
                })
            },
        })
    end,
}

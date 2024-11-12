return {
    "folke/noice.nvim",
    event = "VeryLazy",
    dependencies = { "MunifTanjim/nui.nvim" },
    config = function()
        require "noice".setup({
            lsp = {
                override = {
                    ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
                    ["vim.lsp.util.stylize_markdown"] = true,
                    ["cmp.entry.get_documentation"] = true, -- requires hrsh7th/nvim-cmp
                },
            },
            presets = {
                bottom_search = true,         -- use a classic bottom cmdline for search
                command_palette = true,       -- position the cmdline and popupmenu together
                long_message_to_split = true, -- long messages will be sent to a split
                inc_rename = false,           -- enables an input dialog for inc-rename.nvim
                lsp_doc_border = false,       -- add a border to hover docs and signature help
            },
            views = {
                cmdline_popup = {
                    border = {
                        style = { "╭", "─", "╮", "│", "╯", "─", "╰", "│" },
                        padding = { 0, 2 },
                    },
                    position = {
                        row = "49%",
                        col = "50%",
                    },
                    hover = { border = { style = "rounded" } },
                    float = { border = { style = "rounded" } },
                    popup = { border = { style = "rounded" } },
                },
            },
        })
    end,
}
return {
    "nanozuki/tabby.nvim",
    event = "VimEnter",
    dependencies = "nvim-tree/nvim-web-devicons",
    init = function()
        require("which-key").add({
            { "<leader>ta", ":$tabnew<CR>", desc = "Create a new tab" },
            { "<leader>tc", ":$tabclose<CR>", desc = "Close the tab" },
            { "<leader>to", ":tabonly<CR>", desc = "Close other tab pages" },
            { "<leader>tn", ":tabn<CR>", desc = "Go to next tab page" },
            { "<leader>tp", ":tabp<CR>", desc = "Go to previous tab page" },
        })
    end,
    config = function()
        require "tabby".setup({
            preset = "tab_with_top_win",
            option = {
                theme = {
                    fill = 'TabLineFill',       -- tabline background
                    head = 'TabLine',           -- head element highlight
                    current_tab = 'TabLineSel', -- current tab label highlight
                    tab = 'TabLine',            -- other tab label highlight
                    win = 'TabLine',            -- window highlight
                    tail = 'TabLine',           -- tail element highlight
                },
                nerdfont = true,              -- whether use nerdfont
                buf_name = {
                    mode = "relative",
                },
            },
        })
    end,
}

return {
    "nvim-lualine/lualine.nvim",
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    config = function()
        require "lualine".setup({
            options = {
                component_separators = "",
                section_separators = "",
            },
            sections = {
                lualine_a = { "mode" },
                lualine_b = { "branch" },
                lualine_c = { "filename" },
                lualine_x = { "diagnostics", "diff", "filetype" },
                lualine_y = { "location" },
                lualine_z = { "progress" },
            },
        })
    end,
}

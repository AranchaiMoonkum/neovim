return {

    {
        "nvim-telescope/telescope.nvim",
        branch = "0.1.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "andrew-george/telescope-themes",
        },
        init = function()
            require("which-key").add({
                { "<leader>ff", "<CMD>Telescope find_files<CR>", desc = "Telescope find files" },
                { "<leader>fg", "<CMD>Telescope live_grep<CR>", desc = "Telescope live grep" },
                { "<leader>fb", "<CMD>Telescope buffers<CR>", desc = "Telescope buffers" },
                { "<leader>fh", "<CMD>Telescope help_tags<CR>", desc = "Telescope help tags" },
                { "<leader>th", "<CMD>Telescope themes<CR>", desc = "Theme switcher" },
            })
        end,
        config = function()
            -- load extension
            require "telescope".load_extension("themes")

            local builtin_schemes = require("telescope._extensions.themes").builtin_schemes

            require "telescope".setup({
                extensions = {
                    themes = {
                        enable_previewer = true,
                        enable_live_preview = true,
                        ignore = vim.list_extend(builtin_schemes, { "embark" }),
                        persist = {
                            -- enable persisting last theme choice
                            enabled = true,
                        },
                    },
                },
            })
        end,
    },
}

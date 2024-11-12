return {

    { lazy = true, "nvim-lua/plenary.nvim" },

    { "windwp/nvim-autopairs", event = "InsertEnter", config = true },

    { "windwp/nvim-ts-autotag", config = true },

    {
        "folke/which-key.nvim",
        event = "VeryLazy",
        config = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 300
        end
    },

    { "j-hui/fidget.nvim", config = true },

    { "numToStr/Comment.nvim", config = true },

    { "andweeb/presence.nvim", config = true },

    "github/copilot.vim",

}

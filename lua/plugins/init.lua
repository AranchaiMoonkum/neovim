return {

	{ lazy = true, "nvim-lua/plenary.nvim" },

	{ "windwp/nvim-autopairs", event = "InsertEnter", config = true },

    { "akinsho/toggleterm.nvim", version = "*", config = true },

	{
		"windwp/nvim-ts-autotag",
		config = function()
            require "nvim-ts-autotag".setup({
                opts = {
                    enable_close = true, -- Auto close tags
                    enable_rename = true, -- Auto rename pairs of tags
                    enable_close_on_slash = false,
                }
            })
		end,
	},

	{
		"folke/which-key.nvim",
		event = "VeryLazy",
		config = function()
			vim.o.timeout = true
			vim.o.timeoutlen = 300
		end,
	},

	{ "j-hui/fidget.nvim", config = true },

	{ "numToStr/Comment.nvim", config = true },

	{ "andweeb/presence.nvim", config = true },

    {
        "HiPhish/rainbow-delimiters.nvim",
        config = function()
            require "rainbow-delimiters.setup".setup({})
        end
    },

	"github/copilot.vim",
}

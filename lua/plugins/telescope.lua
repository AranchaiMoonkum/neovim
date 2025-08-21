return {
	"nvim-telescope/telescope.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-lua/popup.nvim",
	},
	keys = {
		{
			"<leader>ff",
			function()
				require("telescope.builtin").find_files({
					hidden = true,
					no_ignore = true,
				})
			end,
		},
		{
			"<leader>fg",
			function()
				require("telescope.builtin").live_grep({
					prompt_prefix = "     ",
				})
			end,
		},
	},
	opts = {
		defaults = {
			multi_icon = "",
			entry_prefix = "   ",
			prompt_prefix = "   ",
			selection_caret = "  ",
		},
		pickers = {
			colorscheme = {
				enable_preview = true,
			},
		},
		extensions = {
			fzf = {
				fuzzy = true,
				case_mode = "smart_case",
			},
		},
	},
}

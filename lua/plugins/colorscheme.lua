return {
	{
		"rose-pine/neovim",
		name = "rose-pine",
		lazy = true,
		priority = 1000,
		opts = {
			variant = "moon",
			styles = {
				bold = true,
				italic = false,
				transparency = true,
			},
			highlight_groups = {
				NormalFloat = { fg = "subtle", bg = "surface" },
				FloatBorder = { bg = "surface" },

				-- built-in
				TabLine = { fg = "subtle", bg = "surface" },
				TabLineFill = { bg = "surface" },
				TabLineSel = { fg = "text", bg = "overlay" },

				Pmenu = { fg = "subtle", bg = "surface" },
				PmenuExtra = { fg = "muted", bg = "surface" },
				PmenuExtraSel = { fg = "subtle", bg = "overlay" },
				PmenuKind = { fg = "foam", bg = "surface" },
				PmenuKindSel = { fg = "subtle", bg = "overlay" },
				PmenuSbar = { bg = "surface" },
				PmenuSel = { fg = "text", bg = "overlay" },

				-- status line
				StatusLine = { fg = "muted", bg = "surface" },
				StatusLineNC = { fg = "muted", bg = "surface", blend = 60 },

				-- search
				CurSearch = { fg = "base", bg = "leaf", inherit = false },
				Search = { fg = "text", bg = "leaf", blend = 20, inherit = false },

				-- blink
				BlinkCmpDoc = { bg = "highlight_low" },
				BlinkCmpDocSeparator = { bg = "highlight_low" },
				BlinkCmpDocBorder = { fg = "highlight_high", bg = "surface" },
				BlinkCmpGhostText = { fg = "muted" },

				BlinkCmpLabel = { fg = "muted" },
				BlinkCmpLabelDeprecated = { fg = "muted", strikethrough = true },
				BlinkCmpLabelMatch = { fg = "text" },

				BlinkCmpDefault = { fg = "highlight_med" },
				BlinkCmpKindText = { fg = "pine" },
				BlinkCmpKindMethod = { fg = "foam" },
				BlinkCmpKindFunction = { fg = "foam" },
				BlinkCmpKindConstructor = { fg = "foam" },
				BlinkCmpKindField = { fg = "pine" },
				BlinkCmpKindVariable = { fg = "rose" },
				BlinkCmpKindClass = { fg = "gold" },
				BlinkCmpKindInterface = { fg = "gold" },
				BlinkCmpKindModule = { fg = "foam" },
				BlinkCmpKindProperty = { fg = "foam" },
				BlinkCmpKindUnit = { fg = "pine" },
				BlinkCmpKindValue = { fg = "love" },
				BlinkCmpKindKeyword = { fg = "iris" },
				BlinkCmpKindSnippet = { fg = "rose" },
				BlinkCmpKindColor = { fg = "love" },
				BlinkCmpKindFile = { fg = "foam" },
				BlinkCmpKindReference = { fg = "love" },
				BlinkCmpKindFolder = { fg = "foam" },
				BlinkCmpKindEnum = { fg = "foam" },
				BlinkCmpKindEnumMember = { fg = "foam" },
				BlinkCmpKindConstant = { fg = "gold" },
				BlinkCmpKindStruct = { fg = "foam" },
				BlinkCmpKindEvent = { fg = "foam" },
				BlinkCmpKindOperator = { fg = "foam" },
				BlinkCmpKindTypeParameter = { fg = "iris" },
				BlinkCmpKindCodeium = { fg = "foam" },
				BlinkCmpKindCopilot = { fg = "foam" },
				BlinkCmpKindSupermaven = { fg = "foam" },
				BlinkCmpKindTabNine = { fg = "foam" },

				-- cmp
				CmpItemAbbr = { fg = "subtle" },
				CmpItemAbbrDeprecated = { fg = "subtle", strikethrough = true },
				CmpItemAbbrMatch = { fg = "text" },
				CmpItemAbbrMatchFuzzy = { fg = "text" },
				CmpItemKind = { fg = "text" },
				CmpItemKindClass = { link = "StorageClass" },
				CmpItemKindFunction = { link = "Function" },
				CmpItemKindInterface = { link = "Type" },
				CmpItemKindMethod = { link = "PreProc" },
				CmpItemKindSnippet = { link = "String" },
				CmpItemKindVariable = { link = "Identifier" },
			},
		},
		config = function(_, opts)
			require("rose-pine").setup(opts)

			vim.cmd.colorscheme("rose-pine")
		end,
	},
	{
		"cdmill/neomodern.nvim",
		lazy = true,
		priority = 1000,
		opts = {
			theme = "hojicha",
			alt_bg = false,
		},
		config = function(_, opts)
			require("neomodern").setup(opts)

			require("neomodern").load()
		end,
	},
	{
		"vague2k/vague.nvim",
		lazy = true,
		priority = 1000,
		opts = {
			transparent = false,
			style = {
				-- "none" is the same thing as default. But "italic" and "bold" are also valid options
				boolean = "none",
				number = "none",
				float = "none",
				error = "none",
				comments = "none",
				conditionals = "none",
				functions = "none",
				headings = "none",
				operators = "none",
				strings = "none",
				variables = "none",

				-- keywords
				keywords = "none",
				keyword_return = "none",
				keywords_loop = "none",
				keywords_label = "none",
				keywords_exception = "none",

				-- builtin
				builtin_constants = "none",
				builtin_functions = "none",
				builtin_types = "none",
				builtin_variables = "none",
			},
		},
		config = function(_, opts)
			require("vague").setup(opts)

			vim.cmd("colorscheme vague")
		end,
	},
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		lazy = false,
		opts = {
			color_overrides = {
				mocha = {
					rosewater = "#ffffff",
					flamingo = "#ffffff",
					red = "#ffdd33",
					maroon = "#ffffff",
					pink = "#ffdd33",
					mauve = "#ffdd33",
					peach = "#96a6c8",
					yellow = "#899b92",
					green = "#73c936",
					teal = "#88b992",
					sky = "#cc8c3c",
					sapphire = "#96a6c8",
					blue = "#778899",
					lavender = "#778899",
					text = "#eae3d5",
					subtext1 = "#d5c9b7",
					subtext0 = "#bfb3a5",
					overlay2 = "#aca195",
					overlay1 = "#958b7e",
					overlay0 = "#6f6660",
					surface2 = "#585858",
					surface1 = "#4b4b4b",
					surface0 = "#353535",
					base = "#181818",
					mantle = "#1d2021",
					crust = "#1d2021",
				},
			},
		},
		config = function(_, opts)
			require("catppuccin").setup(opts)

      vim.cmd("colorscheme catppuccin-mocha")
		end,
	},
}

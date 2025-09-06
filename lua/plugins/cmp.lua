return {
	"saghen/blink.cmp",
	dependencies = "rafamadriz/friendly-snippets",
	version = "1.*",
	opts = {
		keymap = { preset = "default" },
		appearance = { nerd_font_variant = "mono" },
		signature = {
			enabled = true,
			window = {
				show_documentation = false,
			},
		},
		completion = {
			trigger = {
				show_on_insert_on_trigger_character = false,
				show_on_accept_on_trigger_character = false,
				show_on_blocked_trigger_characters = { "{", "(", "}", ")" },
			},
			documentation = {
				auto_show = true,
				auto_show_delay_ms = 0,
			},
			menu = {
				scrollbar = false,
				draw = {
					columns = {
						{ "kind_icon" },
						{ "label", "label_description", gap = 1 },
						{ "kind", gap = 1 },
						{ "label_description", gap = 1 },
						{ "source_name", gap = 1 },
					},
					components = {
						kind_icon = {
							ellipsis = false,
							width = { fill = true },
							text = function(ctx)
								local kind_icons = {
									Function = "λ", -- Lambda symbol for functions
									Method = "∂", -- Lambda symbol for methods
									Field = "󰀫", -- Lambda symbol for methods
									Variable = "󰀫", -- Lambda symbol for methods
									Property = "󰀫", -- Lambda symbol for methods
									Keyword = "k", -- Lambda symbol for methods
									Struct = "Π", -- Lambda symbol for methods
									Enum = "τ", -- Lambda symbol for methods
									EnumMember = "τ", -- Lambda symbol for methods
									Snippet = "⊂",
									Text = "τ",
									Module = "⌠",
									Constructor = "∑",
								}

								local icon = kind_icons[ctx.kind]
								if icon == nil then
									icon = ctx.kind_icon
								end
								return icon
							end,
						},
					},
				},
			},
		},
		sources = {
			default = { "lsp", "path", "snippets", "buffer" },
		},
		fuzzy = { implementation = "prefer_rust_with_warning" },
	},
}

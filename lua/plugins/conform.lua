return {
	"stevearc/conform.nvim",
	config = function()
		require "conform".setup({
			formatters_by_ft = {
				lua = { "stylua" },
				python = { "isort", "black" },
				javascript = { "prettierd" },
                typescript = { "prettierd" },
                javascriptreact = { "prettierd" },
                typescriptreact = { "prettierd" },
                html = { "prettierd" },
                css = { "prettierd" },
                scss = { "prettierd" },
                json = { "prettierd" },
                yaml = { "prettierd" },
                markdown = { "prettierd" },
			},
		})

        -- setup keybinding for formatting
        require "which-key".add({
            {
                "<leader>mp",
                function()
                    require "conform".format({
                        lsp_fallback = true,
                        async = false,
                        timeout_ms = 500,
                    })
                end,
                desc = "Format current buffer",
                mode = { "n", "v" },
            }
        })
	end,
}

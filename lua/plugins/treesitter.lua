return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        require "nvim-treesitter.configs".setup({
            ensure_installed = {
                "html",
                "css",
                "scss",
                "javascript",
                "typescript",
                "json",
                "dockerfile",
                "python",
                "java",
                "yaml",
                "toml",
                "markdown",
                "lua",
                "luadoc",
                "vim",
                "vimdoc",
            },
            sync_install = false,
			auto_install = true,
            autopairs = {
				enable = true,
			},
            highlight = {
				enable = true,
				disable = {},
				additional_vim_regex_highlighting = false,
			},
        })
    end,
}

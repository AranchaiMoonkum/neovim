return {
    "neovim/nvim-lspconfig",
    dependencies = {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "WhoIsSethDaniel/mason-tool-installer.nvim",
    },
    config = function()
        local lspconfig_defaults = require("lspconfig").util.default_config
        lspconfig_defaults.capabilities = vim.tbl_deep_extend(
            "force",
            lspconfig_defaults.capabilities,
            require("cmp_nvim_lsp").default_capabilities()
        )

        vim.api.nvim_create_autocmd("LspAttach", {
            desc = "LSP actions",
            callback = function(event)
                local opts = { buffer = event.buf }

                -- default keymaps
                vim.keymap.set("n", "K", "<CMD>lua vim.lsp.buf.hover()<CR>", opts)
                vim.keymap.set("n", "gd", "<CMD>lua vim.lsp.buf.definition()<CR>", opts)
                vim.keymap.set("n", "gD", "<CMD>lua vim.lsp.buf.declaration()<CR>", opts)
                vim.keymap.set("n", "gi", "<CMD>lua vim.lsp.buf.implementation()<CR>", opts)
                vim.keymap.set("n", "go", "<CMD>lua vim.lsp.buf.type_definition()<CR>", opts)
                vim.keymap.set("n", "gr", "<CMD>lua vim.lsp.buf.references()<CR>", opts)
                vim.keymap.set("n", "gs", "<CMD>lua vim.lsp.buf.signature_help()<CR>", opts)
                vim.keymap.set("n", "<space>rn", "<CMD>lua vim.lsp.buf.rename()<CR>", opts)
                vim.keymap.set("n", "<space>ca", "<CMD>lua vim.lsp.buf.code_action()<CR>", opts)
            end,
        })

        require "mason".setup({})
        require "mason-lspconfig".setup({
            ensure_installed = {
                "lua_ls",
                "vimls",
                "html",
                "cssls",
                "ts_ls",
                "jsonls",
                "dockerls",
                "yamlls",
                -- "java_language_server",
                "jdtls",
                "pyright",
            },
            handlers = {
                function(server_name)
                    require "lspconfig"[server_name].setup({})
                end,

                lua_ls = function()
                    require "lspconfig".lua_ls.setup({
                        settings = {
                            Lua = {
                                diagnostics = { globals = { "vim" } }
                            }
                        }
                    })
                end,
            },
        })

        require "mason-tool-installer".setup({
            ensure_installed = { "prettierd", "eslint_d", "stylua", "isort", "black" },
            auto_update = true,
        })

        -- diagnostics
        vim.diagnostic.config({
            signs = {
                text = {
                    [vim.diagnostic.severity.ERROR] = "✘",
                    [vim.diagnostic.severity.WARN] = "▲",
                    [vim.diagnostic.severity.HINT] = "⚑",
                    [vim.diagnostic.severity.INFO] = "»",
                },
            },
        })
    end,
}

return {
    "nvimtools/none-ls.nvim",
    dependencies = {
        "nvimtools/none-ls-extras.nvim",
    },
    config = function()
        local null_ls = require("null-ls")
        null_ls.setup({
            sources = {
                require("none-ls.diagnostics.eslint_d"),
                null_ls.builtins.formatting.stylua,
                null_ls.builtins.formatting.prettier,
                null_ls.builtins.formatting.isort,
                null_ls.builtins.formatting.black,
                null_ls.builtins.formatting.goimports,
                null_ls.builtins.formatting.gofumpt,

                null_ls.builtins.diagnostics.eslint_d,
                null_ls.builtins.diagnostics.gopls,
                null_ls.builtins.diagnostics.pylint.with({
                    diagnostics_postprocess = function(diagnostic)
                        diagnostic.code = diagnostic.message_id
                    end,
                }),
                vim.keymap.set("n", "<leader>px", vim.lsp.buf.format, {}),
            },
        })
    end,
}

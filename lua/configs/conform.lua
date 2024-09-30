local options = {
    formatters_by_ft = {
        lua = { "stylua" },
        -- python = { "black" },
        python = { "isort", "black" },
        -- css = { "prettier" },
        -- html = { "prettier" },
    },
    formatters = {
        -- Python
        black = {
            prepend_args = {
                "--fast",
                "--line-length",
                "80",
            },
        },
        isort = {
            prepend_args = {
                "--profile",
                "black",
            },
        },
    },
    format_on_save = {
        -- These options will be passed to conform.format()
        timeout_ms = 2500,
        lsp_fallback = true,
    },
}

return options

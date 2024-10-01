local lint = require("lint")

lint.linters_by_ft = {
    python = {
        "ruff",
        -- "flake8",
    },
    -- lua = { "luacheck" },
}

-- lint.linters.luacheck.args = {
--     "--globals",
--     "love",
--     "vim",
--     "--formatter",
--     "plain",
--     "--codes",
--     "--ranges",
--     "-",
-- }

vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
    callback = function()
        lint.try_lint()
    end,
})

pcall(function()
    dofile(vim.g.base46_cache .. "syntax")
    dofile(vim.g.base46_cache .. "treesitter")
end)

local options = {
    ensure_installed = {
        "bash",
        -- "fish",
        "lua",
        "luadoc",
        "python",
        "markdown",
        "printf",
        "toml",
        "vim",
        "vimdoc",
        "yaml",
        "sql",
        "json",
        "glsl",
    },

    highlight = {
        enable = true,
        use_languagetree = true,
    },

    indent = { enable = true },

    -- nvim-treesitter-textobjects
    textobjects = {
        select = {
            enable = true,
            lookahead = true,
            keymaps = {
                -- You can use the capture groups defined in textobjects.scm
                ["af"] = "@function.outer",
                ["if"] = "@function.inner",
                ["ac"] = "@class.outer",
            },
        },
    },
}

require("nvim-treesitter.configs").setup(options)

-- add additional filetypes
vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
    pattern = "*.frag,*.vert",
    callback = function()
        vim.bo.filetype = "glsl"
    end,
})

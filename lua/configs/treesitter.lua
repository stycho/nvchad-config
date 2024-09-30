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
    },

    highlight = {
        enable = true,
        use_languagetree = true,
    },

    indent = { enable = true },
}

require("nvim-treesitter.configs").setup(options)

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
}

require("nvim-treesitter.configs").setup(options)

-- add additional filetypes
vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
    pattern = "*.frag,*.vert",
    callback = function()
        vim.bo.filetype = "glsl"
    end,
})

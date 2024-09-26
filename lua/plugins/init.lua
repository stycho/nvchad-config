return {
    {
        "nvim-treesitter/nvim-treesitter",
        event = { "BufNewFile", "BufNewFile" },
        config = function()
            require("configs.treesitter")
        end
    },
    {
        "neovim/nvim-lspconfig",
        event = { "BufReadPre", "BufNewFile" },
        config = function()
            require("nvchad.configs.lspconfig").defaults()
            require("configs.lspconfig")
        end,
    },
    {
        "stevearc/conform.nvim",
        event = 'BufWritePre',
        opts = require "configs.conform",
    },
    {
        "ThePrimeagen/harpoon",
        branch = "harpoon2",
        dependencies = { "nvim-lua/plenary.nvim" },
        event = "VeryLazy"
    },
    {
        "petertriho/nvim-scrollbar",
        event = "VeryLazy",
        -- dependencies = {
        --     { "kevinhwang91/nvim-hlslens", config = {} },
        --     { "lewis6991/gitsigns.nvim",   config = {} },
        -- },
        config = function()
            require("scrollbar").setup({
                handle = {
                    color = "#51576d", -- Catppuccin surface2
                },
                marks = {
                    Search = { color = "#ff9e64" }, -- Tokyo Night orange
                    Error  = { color = "#f7768e" }, -- Tokyo Night red
                    Warn   = { color = "#e0af68" }, -- Tokyo Night yellow/orange
                    Info   = { color = "#7aa2f7" }, -- Tokyo Night blue
                    Hint   = { color = "#9ece6a" }, -- Tokyo Night green
                    Misc   = { color = "#bb9af7" }, -- Tokyo Night purple
                },
                handlers = {
                    cursor = false
                }
            })
        end
    }
}

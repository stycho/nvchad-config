return {
    {
        "nvim-treesitter/nvim-treesitter",
        event = { "BufNewFile", "BufNewFile" },
        config = function()
            require("configs.treesitter")
        end,
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
        "williamboman/mason-lspconfig.nvim",
        event = "VeryLazy",
        dependencies = { "nvim-lspconfig" },
        config = function()
            require("configs.mason-lspconfig")
        end,
    },
    {
        "stevearc/conform.nvim",
        event = "BufWritePre",
        opts = require("configs.conform"),
    },
    {
        "zapling/mason-conform.nvim",
        event = "VeryLazy",
        dependencies = { "conform.nvim" },
        config = function()
            require("configs.mason-conform")
        end,
    },
    {
        "mfussenegger/nvim-lint",
        event = { "BufReadPre", "BufNewFile" },
        config = function()
            require("configs.lint")
        end,
    },
    {
        "rshkarin/mason-nvim-lint",
        event = "VeryLazy",
        dependencies = { "nvim-lint" },
        config = function()
            require("configs.mason-lint")
        end,
    },
    {
        "ThePrimeagen/harpoon",
        branch = "harpoon2",
        dependencies = { "nvim-lua/plenary.nvim" },
        event = "VeryLazy",
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
                    Error = { color = "#f7768e" }, -- Tokyo Night red
                    Warn = { color = "#e0af68" }, -- Tokyo Night yellow/orange
                    Info = { color = "#7aa2f7" }, -- Tokyo Night blue
                    Hint = { color = "#9ece6a" }, -- Tokyo Night green
                    Misc = { color = "#bb9af7" }, -- Tokyo Night purple
                },
                handlers = {
                    cursor = false,
                },
            })
        end,
    },
    {
        "linux-cultist/venv-selector.nvim",
        dependencies = {
            "neovim/nvim-lspconfig",
            "mfussenegger/nvim-dap",
            "mfussenegger/nvim-dap-python", --optional
            { "nvim-telescope/telescope.nvim", branch = "0.1.x", dependencies = { "nvim-lua/plenary.nvim" } },
        },
        lazy = false,
        branch = "regexp", -- This is the regexp branch, use this for the new version
        config = function()
            require("venv-selector").setup()
        end,
        keys = {
            { ",v", "<cmd>VenvSelect<cr>" },
        },
    },
}

local on_attach = require("nvchad.configs.lspconfig").on_attach
local on_init = require("nvchad.configs.lspconfig").on_init
local capabilities = require("nvchad.configs.lspconfig").capabilities

local lspconfig = require("lspconfig")

-- list of all servers configured.
lspconfig.servers = {
    "lua_ls",
    "html",
    "cssls",
    "basedpyright",
    "jsonls",
    "pico8_ls",
    "glsl_analyzer",
}

-- list of servers configured with default config.
local default_servers = { "html", "cssls", "jsonls" }

-- lsps with default config
for _, lsp in ipairs(default_servers) do
    lspconfig[lsp].setup({
        on_attach = on_attach,
        on_init = on_init,
        capabilities = capabilities,
    })
end

lspconfig.basedpyright.setup({
    on_attach = on_attach,
    on_init = on_init,
    capabilities = capabilities,
    settings = {
        basedpyright = {
            -- Pyright focuses on type checking, and Flake8 handles linting.
            -- typeCheckingMode = "basic", -- You can set this to "off" if you want no type-checking diagnostics.
            typeCheckingMode = "standard", -- You can set this to "off" if you want no type-checking diagnostics.
            -- autoSearchPaths = true,
            -- useLibraryCodeForTypes = true,
            --
            -- -- Disable specific diagnostics that overlap with Flake8:
            -- diagnosticSeverityOverrides = {
            --     -- Pyright diagnostics disabled to avoid conflicts with Flake8:
            --     reportUnusedImport = "none", -- Flake8 handles unused imports
            --     reportUnusedVariable = "none", -- Flake8 handles unused variables
            --     reportUnusedFunction = "none", -- Flake8 handles unused functions
            --     reportMissingImports = "none", -- Flake8 handles import checks
            --     reportUndefinedVariable = "none", -- Flake8 checks undefined variables
            --     reportMissingTypeStubs = "none", -- Disable missing type stub warnings
            -- },
        },
    },
})

lspconfig.lua_ls.setup({
    on_attach = on_attach,
    on_init = on_init,
    capabilities = capabilities,

    settings = {
        Lua = {
            runtime = { version = "LuaJIT" },
            library = {
                vim.fn.stdpath("config") .. "/opt/homebrew/bin/love", -- Path to love-emmy
            },
            diagnostics = {
                -- enable = false, -- Disable all diagnostics from lua_ls
                globals = {
                    "love",
                    -- "vim"
                },
                disable = { "duplicate-set-field" },
            },
            workspace = {
                library = {
                    vim.fn.expand("$VIMRUNTIME/lua"),
                    vim.fn.expand("$VIMRUNTIME/lua/vim/lsp"),
                    vim.fn.stdpath("data") .. "/lazy/ui/nvchad_types",
                    vim.fn.stdpath("data") .. "/lazy/lazy.nvim/lua/lazy",
                    "${3rd}/love2d/library",
                    -- "${3rd}/love2d/library",
                },
                maxPreload = 100000,
                preloadFileSize = 10000,
            },
        },
    },
})

lspconfig.glsl_analyzer.setup({
    on_attach = on_attach,
    on_init = on_init,
    capabilities = capabilities,

    filetypes = { "glsl", "frag", "vert" }, -- Explicitly mention frag filetype
    root_dir = require("lspconfig.util").root_pattern(".git", vim.fn.getcwd()),
})

-- lspconfig.pico8_ls.setup({
--     on_attach = on_attach,
--     on_init = on_init,
--     capabilities = capabilities,
--     cmd = { "pico8-ls", "--stdio" },
--     filetypes = { "p8" },
-- })

-- require("lspconfig").basedpyright.setup({
--     on_attach = on_attach,
--     on_init = on_init,
--     capabilities = capabilities,
--     settings = {
--         python = {
--             analysis = {
--                 -- Pyright focuses on type checking, and Flake8 handles linting.
--                 -- typeCheckingMode = "basic", -- You can set this to "off" if you want no type-checking diagnostics.
--                 typeCheckingMode = "off", -- You can set this to "off" if you want no type-checking diagnostics.
--                 -- autoSearchPaths = true,
--                 -- useLibraryCodeForTypes = true,
--                 --
--                 -- -- Disable specific diagnostics that overlap with Flake8:
--                 -- diagnosticSeverityOverrides = {
--                 --     -- Pyright diagnostics disabled to avoid conflicts with Flake8:
--                 --     reportUnusedImport = "none", -- Flake8 handles unused imports
--                 --     reportUnusedVariable = "none", -- Flake8 handles unused variables
--                 --     reportUnusedFunction = "none", -- Flake8 handles unused functions
--                 --     reportMissingImports = "none", -- Flake8 handles import checks
--                 --     reportUndefinedVariable = "none", -- Flake8 checks undefined variables
--                 --     reportMissingTypeStubs = "none", -- Disable missing type stub warnings
--                 -- },
--             },
--         },
--     },
-- })
--
-- lspconfig.lua_ls.setup({
--     on_attach = on_attach,
--     on_init = on_init,
--     capabilities = capabilities,
--
--     settings = {
--         Lua = {
--             diagnostics = {
--                 -- enable = false, -- Disable all diagnostics from lua_ls
--                 -- globals = { "vim" },
--             },
--             workspace = {
--                 library = {
--                     vim.fn.expand("$VIMRUNTIME/lua"),
--                     vim.fn.expand("$VIMRUNTIME/lua/vim/lsp"),
--                     vim.fn.stdpath("data") .. "/lazy/ui/nvchad_types",
--                     vim.fn.stdpath("data") .. "/lazy/lazy.nvim/lua/lazy",
--                 },
--                 maxPreload = 100000,
--                 preloadFileSize = 10000,
--             },
--         },
--     },
-- })

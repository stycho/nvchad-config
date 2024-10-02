-- Thanks to original theme for existing https://github.com/microsoft/vscode/blob/main/extensions/theme-defaults/themes/dark_plus.json
-- this is a modified version of it

-- -@type Base46Table
local M = {}

-- M.base_30 = {
--   white = "#dee1e6",
--   darker_black = "#1a1a1a",
--   black = "#1E1E1E", --  nvim bg
--   black2 = "#252525",
--   one_bg = "#282828",
--   one_bg2 = "#313131",
--   one_bg3 = "#3a3a3a",
--   grey = "#444444",
--   grey_fg = "#4e4e4e",
--   grey_fg2 = "#585858",
--   light_grey = "#626262",
--   red = "#D16969",
--   baby_pink = "#ea696f",
--   pink = "#bb7cb6",
--   line = "#2e2e2e", -- for lines like vertsplit
--   green = "#B5CEA8",
--   green1 = "#4EC994",
--   vibrant_green = "#bfd8b2",
--   blue = "#569CD6",
--   nord_blue = "#60a6e0",
--   yellow = "#D7BA7D",
--   sun = "#e1c487",
--   purple = "#c68aee",
--   dark_purple = "#b77bdf",
--   teal = "#4294D6",
--   orange = "#d3967d",
--   cyan = "#9CDCFE",
--   statusline_bg = "#242424",
--   lightbg = "#303030",
--   pmenu_bg = "#60a6e0",
--   folder_bg = "#7A8A92",
-- }

M.base_30 = {
  white = "#dee1e6",
  darker_black = "#252526", --
  black = "#1E1E1E",        --  nvim bg
  black2 = "#222222",       --
  one_bg = "#303031",       --
  one_bg2 = "#303031",
  one_bg3 = "#404040",      --
  grey = "#454545",         --
  grey_fg = "#707070",      --
  grey_fg2 = "#A6A6A6",     --
  light_grey = "#CCCCCC",   --
  red = "#ea696f",          --
  baby_pink = "#d16969",    --
  pink = "#C586C0",         --
  line = "#2e2e2e",         -- for lines like vertsplit
  green = "#6A9955",
  green1 = "#4EC9B0",       --
  vibrant_green = "#bfd8b2",
  blue = "#4FC1FF",         --
  nord_blue = "#569cd6",    --
  yellow = "#DCDCAA",       --
  sun = "#d7ba7d",          --
  purple = "#C586C0",       --
  dark_purple = "#b77bdf",
  teal = "#4294D6",
  orange = "#CE9178", --
  cyan = "#9CDCFE",   --
  statusline_bg = "#242424",
  lightbg = "#303030",
  pmenu_bg = "#6796e6", --
  folder_bg = "#7A8A92",
}

local name_label = "#C8C8C8"
local folder_bg = "#808080"
local new_operator = "#d4d4d4"
local number_literal = "#b5cea8"

M.base_16 = {
  --author of this template Tomas Iser, @tomasiser on github,
  base00 = "#1E1E1E",
  base01 = "#262626",
  base02 = "#303030",
  base03 = "#3C3C3C",
  base04 = "#464646",
  base05 = "#D4D4D4",
  base06 = "#E9E9E9",
  base07 = "#FFFFFF",
  base08 = "#D16969",
  base09 = "#B5CEA8",
  base0A = "#D7BA7D",
  base0B = "#BD8D78",
  base0C = "#9CDCFE",
  base0D = "#DCDCAA",
  base0E = "#C586C0",
  base0F = "#E9E9E9",
}
M.polish_hl = {
  treesitter = {
    ["@function"] = { fg = M.base_30.yellow },
    ["@variable"] = { fg = M.base_30.cyan },
    ["@variable.member"] = { fg = M.base_30.cyan },
    ["@variable.parameter"] = { fg = M.base_30.cyan },
    ["@variable.builtin"] = { fg = M.base_30.cyan },
    ["@type"] = { fg = M.base_30.green1 },
    ["@type.builtin"] = { fg = M.base_30.green1 },
    ["@number"] = { fg = number_literal },
    ["@keyword"] = { fg = M.base_30.teal },
    ["@keyword.return"] = { fg = M.base_30.pink },
    ["@keyword.repeat"] = { fg = M.base_30.pink },
    ["@keyword.function"] = { fg = M.base_30.nord_blue },
    ["@keyword.import"] = { fg = M.base_30.pink },
    ["@constant"] = { fg = M.base_30.teal },
    ["@constructor"] = { fg = M.base_30.green1 },
    ["@attribute"] = { fg = M.base_30.yellow },
    ["@attribute.builtin"] = { fg = M.base_30.green1 },
    ["@operator"] = { fg = M.base_30.yellow },
    ["@string"] = { fg = M.base_30.orange },
    ["@boolean"] = { fg = M.base_30.nord_blue },
    ["@property"] = { fg = M.base_30.cyan },
  },
}

-- M.polish_hl = {
--   defaults = {
--     Function = { fg = M.base_30.green },
--   },
--   treesitter = {
--     Function = { fg = M.base_30.green },
--     Comment = { fg = M.base_30.green },
--     ["@function.call"] = { fg = M.base_30.green },
--     ["@keyword.function"] = { fg = M.base_30.green },
--   },
--   -- -- UI Elements
--   -- Normal = {},              -- Main text
--   -- CursorLine = {},          -- Background color of the current line
--   -- CursorLineNr = {},        -- Line number of the current line
--   -- LineNr = {},              -- Line numbers for other lines
--   -- SignColumn = {},          -- Signs column (for linting or git)
--   -- StatusLine = {},          -- Status bar of the active window
--   -- StatusLineNC = {},        -- Status bar of an inactive window
--   -- TabLine = {},             -- Tabline for multiple tabs
--   -- TabLineFill = {},         -- Fills background of the tabline
--   -- TabLineSel = {},          -- Selected tab in the tabline
--   -- VertSplit = {},           -- Vertical split separator
--   -- Pmenu = {},               -- Pop-up menu background
--   -- PmenuSel = {},            -- Selected item in pop-up menu
--   -- PmenuSbar = {},           -- Pop-up menu scrollbar
--   -- PmenuThumb = {},          -- Thumb in scrollbar
--   -- Visual = {},              -- Visual mode selection
--   -- Folded = {},              -- Folded text in code
--   -- FoldColumn = {},          -- Fold column
--   -- WinSeparator = {},        -- Window separator (used in splits)

--   -- -- Syntax Groups
--   -- Comment = { fg = M.base_30.green }, -- Comments
--   -- Constant = {},            -- Constants (numbers, booleans, etc.)
--   -- String = {},              -- Strings
--   -- Character = {},           -- Individual characters
--   -- Number = {},              -- Number literals
--   -- Boolean = {},             -- Boolean literals
--   -- Float = {},               -- Floating-point numbers
--   -- Identifier = {},          -- Variables and function names
--   -- Function = { fg = M.base_30.green }, -- Function names
--   -- Variable = {},            -- Variables
--   -- Statement = {},           -- Control-flow statements (if, for, etc.)
--   -- Conditional = {},         -- Conditional statements (if, else)
--   -- Repeat = {},              -- Looping statements (for, while)
--   -- Label = {},               -- Labels (e.g., goto labels)
--   -- Operator = {},            -- Operators (e.g., +, -, *)
--   -- Keyword = {},             -- Language keywords (def, class, return)
--   -- Exception = {},           -- Exception handling keywords (try, catch)
--   -- PreProc = {},             -- Preprocessor directives
--   -- Include = {},             -- Include statements (#include)
--   -- Define = {},              -- Macro definitions (#define)
--   -- Macro = {},               -- Macros
--   -- PreCondit = {},           -- Preprocessor conditionals (#if, #else)
--   -- Type = {},                -- Type definitions (int, float, String)
--   -- StorageClass = {},        -- Storage class keywords (static, extern)
--   -- Structure = {},           -- Struct definitions
--   -- Typedef = {},             -- Type definitions
--   -- Special = {},             -- Special items (like this in OOP)
--   -- SpecialChar = {},         -- Special characters
--   -- Tag = {},                 -- Tags
--   -- Delimiter = {},           -- Delimiters (braces, parentheses)
--   -- SpecialComment = {},      -- Special comments
--   -- Debug = {},               -- Debugging-related highlights

--   -- -- LSP & Diagnostics
--   -- DiagnosticError = {},     -- Errors
--   -- DiagnosticWarn = {},      -- Warnings
--   -- DiagnosticInfo = {},      -- Information messages
--   -- DiagnosticHint = {},      -- Hints
--   -- DiagnosticUnderlineError = {}, -- Underline for errors
--   -- DiagnosticUnderlineWarn = {},  -- Underline for warnings
--   -- DiagnosticUnderlineInfo = {},  -- Underline for information
--   -- DiagnosticUnderlineHint = {},  -- Underline for hints

--   -- -- Git & Diff
--   -- DiffAdd = {},             -- Lines added in a diff
--   -- DiffChange = {},          -- Lines changed in a diff
--   -- DiffDelete = {},          -- Lines deleted in a diff
--   -- DiffText = {},            -- Text changed in a diff
--   -- GitSignsAdd = {},         -- Git signs for added lines
--   -- GitSignsChange = {},      -- Git signs for changed lines
--   -- GitSignsDelete = {},      -- Git signs for deleted lines

--   -- Tree-sitter-based Groups (if using Tree-sitter)
--   -- ["@comment"] = { fg = M.base_30.green }, -- Comments (Tree-sitter)
--   -- ["@constant"] = {},                      -- Constants (Tree-sitter)
--   -- ["@string"] = {},                        -- Strings (Tree-sitter)
--   -- ["@variable"] = {},                      -- Variables (Tree-sitter)
--   -- ["@function"] = { fg = M.base_30.green }, -- Functions (Tree-sitter)
--   -- ["@keyword"] = {},                       -- Keywords (Tree-sitter)
--   -- ["@type"] = {},                          -- Types (Tree-sitter)
--   -- ["@operator"] = {},                      -- Operators (Tree-sitter)
--   -- ["@number"] = {},                        -- Numbers (Tree-sitter)
--   -- ["@boolean"] = {},                       -- Booleans (Tree-sitter)
--   -- ["@label"] = {},                         -- Labels (Tree-sitter)
--   -- ["@tag"] = {},                           -- Tags (Tree-sitter)
--   -- ["@constructor"] = {},                   -- Constructors (Tree-sitter)
--   -- hl_override = {
--   --   Function = { fg = M.base_30.green },
--   -- },
--   -- polish_hl = {
--   --   treesitter = {
--   --     Function = { fg = M.base_30.green },
--   --     Comment = { fg = M.base_30.green },
--   --     ["@function.call"] = { fg = M.base_30.green },
--   --     ["@keyword.function"] = { fg = M.base_30.green },
--   --   },
--   --   Function = { fg = M.base_30.green },
--   --   Comment = { fg = M.base_30.green },
--   --   ["@function.call"] = { fg = M.base_30.green },
--   --   ["@keyword.function"] = { fg = M.base_30.green },
--   -- }
-- }

-- M.polish_hl = {
--   Comment = { italic = true },
--   Function = { fg = M.base_30.red },
--   ["@function.call"] = { fg = M.base_30.red },
--   ["@keyword.function"] = { fg = M.base_30.teal },
--   treesitter = {
--     Comment = { italic = true },
--     Function = { fg = M.base_30.red },
--     ["@function.call"] = { fg = M.base_30.red },
--     ["@keyword.function"] = { fg = M.base_30.teal },
--     -- ["@variable.parameter"] = { fg = M.base_30.blue },
--     -- ["@keyword"] = { fg = M.base_30.blue },
--     -- ["@variable"] = { fg = M.base_30.cyan },
--     -- ["@variable.member.key"] = { fg = M.base_30.green1 },
--     -- ["@keyword.return"] = { fg = M.base_16.base0E },
--     -- ["@keyword.function"] = { fg = M.base_30.teal },
--   },
-- }


M.type = "dark"

M = require("base46").override_theme(M, "new_vs")

return M

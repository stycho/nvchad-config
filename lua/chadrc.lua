-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v2.5/lua/nvconfig.lua
-- Please read that file to know all available options :(
--
-- local b46 = require("base46")
-- local cpcn = b46.lua.base46.themes.catppuccin

---@type ChadrcConfig
local M = {}

local vscGray = "#808080"
local vscViolet = "#646695"
local vscBlue = "#569CD6"
local vscAccentBlue = "#4FC1FF"
local vscDarkBlue = "#223E55"
local vscMediumBlue = "#18a2fe"
local vscDisabledBlue = "#729DB3"
local vscLightBlue = "#9CDCFE"
local vscGreen = "#6A9955"
local vscBlueGreen = "#4EC9B0"
local vscLightGreen = "#B5CEA8"
local vscRed = "#F44747"
local vscOrange = "#CE9178"
local vscLightRed = "#D16969"
local vscYellowOrange = "#D7BA7D"
local vscYellow = "#DCDCAA"
local vscDarkYellow = "#FFD602"
local vscPink = "#C586C0"

M.base46 = {
    theme = "veeess",
}

M.ui = {}

M.nvdash = {
    nvdash = {
        load_on_startup = true,

        header = {
            "           ▄ ▄                   ",
            "       ▄   ▄▄▄     ▄ ▄▄▄ ▄ ▄     ",
            "       █ ▄ █▄█ ▄▄▄ █ █▄█ █ █     ",
            "    ▄▄ █▄█▄▄▄█ █▄█▄█▄▄█▄▄█ █     ",
            "  ▄ █▄▄█ ▄ ▄▄ ▄█ ▄▄▄▄▄▄▄▄▄▄▄▄▄▄  ",
            "  █▄▄▄▄ ▄▄▄ █ ▄ ▄▄▄ ▄ ▄▄▄ ▄ ▄ █ ▄",
            "▄ █ █▄█ █▄█ █ █ █▄█ █ █▄█ ▄▄▄ █ █",
            "█▄█ ▄ █▄▄█▄▄█ █ ▄▄█ █ ▄ █ █▄█▄█ █",
            "    █▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄█ █▄█▄▄▄█    ",
        },

        buttons = {
            { "  Find File", "Spc f f", "Telescope find_files" },
            { "󰈚  Recent Files", "Spc f o", "Telescope oldfiles" },
            { "󰈭  Find Word", "Spc f w", "Telescope live_grep" },
            { "  Bookmarks", "Spc m a", "Telescope marks" },
            { "  Themes", "Spc t h", "Telescope themes" },
            { "  Mappings", "Spc c h", "NvCheatsheet" },
        },
    },
}

return M

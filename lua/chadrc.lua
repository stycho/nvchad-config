-- This file needs to have same structure as nvconfig.lua 
-- https://github.com/NvChad/ui/blob/v2.5/lua/nvconfig.lua
-- Please read that file to know all available options :( 

---@type ChadrcConfig
local M = {}

local vscGray = '#808080'
local vscViolet = '#646695'
local vscBlue = '#569CD6'
local vscAccentBlue = '#4FC1FF'
local vscDarkBlue = '#223E55'
local vscMediumBlue = '#18a2fe'
local vscDisabledBlue = '#729DB3'
local vscLightBlue = '#9CDCFE'
local vscGreen = '#6A9955'
local vscBlueGreen = '#4EC9B0'
local vscLightGreen = '#B5CEA8'
local vscRed = '#F44747'
local vscOrange = '#CE9178'
local vscLightRed = '#D16969'
local vscYellowOrange = '#D7BA7D'
local vscYellow = '#DCDCAA'
local vscDarkYellow = '#FFD602'
local vscPink = '#C586C0'

M.base46 = {
	theme = "vscode_dark",
  hl_override = {
    Comment = {italic = true},
    ["@string"] = { fg = vscOrange },
    -- ["@constructor"] = { fg = vscBlueGreen },
    ["@function.call"] = { fg = vscYellow },
    ["@function"] = { fg = vscYellow },
    ["@constant"] = { fg = vscAccentBlue },
    ["@variable"] = { fg = vscLightBlue },
    ["@function.method.call"] = { fg = vscYellow },
    ["@constructor"] = { fg = vscBlueGreen },
    ["@variable.parameter"] = { fg = vscLightBlue },
    ["@type.builtin"] = { fg = vscBlueGreen },
    ["@type"] = { fg = vscBlueGreen },
    ["@variable.builtin"] = { fg = vscLightBlue },
    ["@variable.member"] = { fg = vscLightBlue },
    ["@property"] = { fg = vscLightBlue },
    ["@number"] = { fg = vscYellow },
    ["@function.builtin"] = { fg = vscYellow },
    Type = { fg = vscBlueGreen },
    ["@keyword"] = { fg = vscMediumBlue },
    ["@keyword.function"] = { fg = vscMediumBlue},
    Include = { fg = vscPink},
    ["@keyword.return"]= { fg = vscPink },
    ["Normal"] = { bg = '#1F1F1F' },
    ["@comment"] = { fg = vscGreen },
  },
	-- hl_override = {
	-- 	Comment = { italic = true },
	-- 	["@comment"] = { italic = true },
	-- },
}

return M

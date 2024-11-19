-- This file needs to have same structure as nvconfig.lua 
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :( 

local M = {}

M.base46 = {
  theme = "catppuccin",
}

M.base46.hl_override = require("configs.hl")[M.base46.theme]

M.ui = {
  statusline = {
    theme = "minimal", -- default/vscode/vscode_colored/minimal
    -- default/round/block/arrow separators work only for default statusline theme
    -- round and block will work for minimal theme only
    separator_style = "round"
  },
}

return M


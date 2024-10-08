-- This file needs to have same structure as nvconfig.lua 
-- https://github.com/NvChad/ui/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

M.ui = {
	theme = "onedark",
  transparency = true,
  nvdash = {
    load_on_startup = true,
  }

	-- hl_override = {
	-- 	Comment = { italic = true },
	-- 	["@comment"] = { italic = true },
	-- },

}

M.term = {
  sizes = {
    vsp = 0.5
  }
}

return M

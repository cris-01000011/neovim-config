-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :(

---@type ChadrcConfig
local M = {}

M.base46 = {
  theme = "catppuccin",
  transparency = false,
  hl_override = {
    Comment = { fg = "#5e5c5c" },
    ["@comment"] = { italic = true },
    Visual = { bg = "dark_purple", fg = "darker_black" },
  },
}

M.nvdash = { load_on_startup = true }

M.ui = {
  tabufline = { lazyload = false },
}

-- require("lspconfig").phpactor.setup {
--   root_dir = function(_)
--     return vim.loop.cwd()
--   end,
--   init_options = {
--     ["language_server.diagnostics_on_update"] = false,
--     ["language_server.diagnostics_on_open"] = false,
--     ["language_server.diagnostics_on_save"] = false,
--     ["language_server_phpstan.enabled"] = false,
--     ["language_server_psalm.enabled"] = false,
--   },
-- }

return M

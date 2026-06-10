-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :(

---@type ChadrcConfig
local M = {}

M.base46 = {
  theme = "catppuccin",
  transparency = false,
  hl_override = {
    -- editor
    Normal = { bg = "#11111f" },
    NormalFloat = { bg = "#11111f" },
    FloatBorder = { fg = "#b4befe" },

    -- NvimTree
    NvimTreeNormal = { bg = "#11111f" },
    NvimTreeNormalNC = { bg = "#11111f" },
    NvimTreeEndOfBuffer = { bg = "#11111f" },
    NvimTreeWinSeparator = { fg = "#11111f", bg = "#11111f" },
    NvimTreeCursorLine = { bg = "#1e1e2e" },

    -- Tabufline
    TbBufOn = { bg = "#11111f" },
    TbBufOnClose = { bg = "#11111f" },
    TbFill = { bg = "#11111f" },
    TbBufOnModified = { bg = "#11111f" },
    TbTabOn = { bg = "#11111f" },
    TbTabOff = { bg = "#11111f" },
    TbBufOff = { bg = "#11111f" },
    TbBufOffClose = { bg = "#11111f" },
    TbBufOffModified = { bg = "#11111f" },
    TbTabNewBtn = { bg = "#11111f" },
    TbThemeToggleBtn = { bg = "#11111f" },

    -- cmp
    CmpDoc = { bg = "#181825" },
    CmpDocBorder = { fg = "#181825", bg = "#181825" },
    CmpBorder = { fg = "#181825", bg = "#181825" },
    CmpPmenu = { fg = "#181825", bg = "#181825" },
    CmpSel = { fg = "#181825", bg = "#181825" },
    CodeActionMenuMenuKind = { fg = "#181825", bg = "#181825" },

    -- others
    Comment = { fg = "#5e5c5c" },
    ["@comment"] = { italic = true },
    Visual = { bg = "dark_purple", fg = "darker_black" },
    Search = { bg = "dark_purple", fg = "darker_black" },
    IncSearch = { bg = "dark_purple", fg = "darker_black" },
  },
}

M.nvdash = {
  load_on_startup = false,
  header = {
    "⠀⠀⣠⡶⠂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
    "⠀⣰⣿⠃⠀⠀⠀⠀⠀⠀⠀⢀⣀⡀⠀⠀⠀⠀⠀⠀⠀",
    "⢸⣿⣯⠀⠀⠀⠀⠀⠀⢠⣴⣿⣿⣿⣿⣦⠀⠀⠀⠀⠀",
    "⢼⣿⣿⣆⠀⢀⣀⣀⣴⣿⣿⣿⠋⠀⠀⠀⠀⠀⠀⠀⠀",
    "⢸⣿⣿⣿⣿⣿⣿⣿⠿⠿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀",
    "⠀⢻⣿⠋⠙⢿⣿⣿⡀⠀⣿⣷⣄⠀⠀⠀⠀⠀⠀⠀⠀",
    "⠀⢸⠿⢆⣀⣼⣿⣿⣿⣿⡏⠀⢹⠀⠀⠀⠀⠀⠀⠀⠀",
    "⠀⠀⡀⣨⡙⠟⣩⣙⣡⣬⣴⣤⠏⠀⠀⠀⠀⠀⠀⣀⡀",
    "⠀⠀⠙⠿⣿⣿⣿⣿⣿⣿⣿⣧⠀⠀⠀⣀⣤⣾⣿⣿⡇",
    "⠀⠀⠀⠀⠀⢀⣿⣿⣿⣿⣿⣿⣇⠀⢸⣿⣿⠿⠿⠛⠃",
    "⠀⠀⠀⠀⢠⣿⣿⢹⣿⢹⣿⣿⣿⢰⣿⠿⠃⠀⠀⠀⠀",
    "⠀⢀⣀⣤⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⡛⠀⠀⠀⠀⠀⠀",
    "⠀⠻⠿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠿⠿⠛⠓⠀⠀⠀⠀⠀",
    "⠀⠀⠀⠀⠀⠀⠀⠉⠀⠉⠈⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀",
    "                     ",
  },
}

M.ui = {
  cmp = {
    icons = true,
    lspkind_text = true,
    style = "atom_colored", -- default/flat_light/flat_dark/atom/atom_colored
  },

  tabufline = {
    enabled = true,
    lazyload = false,
    order = { "treeOffset", "buffers", "tabs", "btns" },
    modules = nil,
  },

  telescope = { style = "bordered" },

  statusline = {
    theme = "vscode_colored", -- default/vscode/vscode_colored/minimal
    -- default/round/block/arrow separators work only for default statusline theme
    -- round and block will work for minimal theme only
    separator_style = "default",
    order = nil,
    modules = nil,
  },
}

M.term = {
  winopts = { number = false, relativenumber = false },
  sizes = { sp = 0.3, vsp = 0.2, ["bo sp"] = 0.3, ["bo vsp"] = 0.2 },
  float = {
    relative = "editor",
    row = 0.3,
    col = 0.25,
    width = 0.5,
    height = 0.4,
    border = "single",
  },
}

M.lsp = { signature = true }

return M

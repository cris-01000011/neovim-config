require "nvchad.options"

-- add yours here!

-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!

vim.lsp.enable "biome"
vim.opt.wrap = false

require("nvim-dap-projects").search_project_config()

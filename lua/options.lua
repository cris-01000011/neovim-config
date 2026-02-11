require "nvchad.options"

-- add yours here!

-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!

vim.lsp.enable "biome"
vim.opt.wrap = false

-- Auto-start ts_ls only for TypeScript files
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "typescript", "typescriptreact" },
  callback = function()
    -- Avoid starting it twice
    local clients = vim.lsp.get_clients({ name = "ts_ls", bufnr = 0 })
    if #clients == 0 then
      vim.cmd("LspStart ts_ls")
    end
  end,
})


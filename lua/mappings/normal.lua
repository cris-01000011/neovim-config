local map = vim.keymap.set

map({ "n", "t" }, "<A-v>", function()
  require("nvchad.term").toggle {
    pos = "vsp",
    id = "vertTerm",
    size = 0.5,
  }
end, { desc = "terminal toggle vertical term" })

map({ "n", "t" }, "<A-o>", function()
  require("nvchad.term").toggle {
    pos = "float",
    id = "floatBigTerm",
    float_opts = {
      relative = "editor",
      width = 0.8,
      height = 0.8,
      row = 0.05,
      col = 0.1,
    },
  }
end)

-- Next tab
map("n", "<Tab>", function()
  vim.cmd "tabnext"
end, { desc = "Next tab" })

-- Previous tab
map("n", "<S-Tab>", function()
  vim.cmd "tabprevious"
end, { desc = "Previous tab" })

map("n", "<A-q>", "<cmd>q<cr>", { desc = "close window" })
map("n", "<leader>tn", "<cmd>tabnew<CR>", { desc = "create tab" })
map("n", "<leader>tc", "<cmd>tabclose<CR>", { desc = "close tab" })
map("n", "<leader>tt", "<cmd>tabnew|terminal<CR>a", { desc = "create terminal tab" })

map("n", ";", ":", { desc = "cmd enter command mode" })
map("n", "<C-q>", "<Esc>:qa<CR>", { desc = "exit" })

map("n", "<A-Down>", "<Esc>:NvimTreeFocus<CR>", { desc = "focus nvimtree" })
map("n", "<A-k>", "<Esc>:lua vim.diagnostic.open_float()<CR>", { desc = "view errors" })
map(
  "n",
  "<A-y>",
  "<cmd>lua vim.diagnostic.open_float()<CR><cmd>lua vim.diagnostic.open_float()<CR>VGy<cmd>q<cr>",
  { desc = "view errors" }
)

map("n", "<C-x>", function()
  require("nvchad.tabufline").close_buffer()
end, { desc = "close buffer" })

map("n", "<leader>yp", function()
  local path = vim.fn.expand "%"
  vim.fn.setreg("+", path)
  vim.notify('Copied: ' .. path)
end, { desc = "copy relative path" })

map("n", "<A-Left>", function()
  require("nvchad.tabufline").prev()
end, { desc = "prev buffer" })

map("n", "<A-Right>", function()
  require("nvchad.tabufline").next()
end, { desc = "next buffer" })

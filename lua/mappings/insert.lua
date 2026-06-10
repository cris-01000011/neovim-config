local map = vim.keymap.set

map("i", "<C-q>", "<Esc>:qa<CR>", { desc = "exit" })
map("i", "<A-d>", "<Esc>0i", { desc = "start of line" })
map("i", "<C-c>", "<Esc><S-v>yi", { desc = "copy line" })
map("i", "<C-BS>", "<Esc>vbdha", { desc = "delete prev word" })
map("i", "<C-s>", "<Esc><Cmd>w<CR>", { desc = "save file" })
map("i", "<C-y>", "<C-o><C-r>", { desc = "redo" })
map("i", "<C-ñ>", "<Esc>yypi", { desc = "duplicate line" })
map("i", "<C-v>", "<Esc>v", { desc = "enter to visual mode" })
map("i", "<C-l>", "<Esc><S-v><Del>i", { desc = "delete current line" })
map("i", "<C-f>", "<Esc>:Telescope oldfiles<CR>", { desc = "find recent files" })
map("i", "<C-1>", "<Esc>va", { desc = "visual around" })

map("i", "<C-x>", function()
  require("nvchad.tabufline").close_buffer()
end, { desc = "close buffer" })

map("i", "<A-k>", "<Esc>:lua vim.diagnostic.open_float()<CR>", { desc = "view errors" })
map("i", "<A-f>", "<Esc>:Telescope find_files<CR>", { desc = "find file" })

map("i", "<A-s>", "<Esc>:MCstart<CR>", { desc = "select concurrences" })

map("i", "<A-Left>", function()
  require("nvchad.tabufline").prev()
end, { desc = "prev buffer" })

map("i", "<A-Right>", function()
  require("nvchad.tabufline").next()
end, { desc = "next buffer" })

map("i", "<A-1>", function()
  require("conform").format { lsp_fallback = true }
end, { desc = "general format file" })

map("i", "<A-Down>", "<Esc>:NvimTreeFocus<CR>", { desc = "focus nvimtree" })

map("i", "<A-i>", function()
  require("nvchad.term").toggle { pos = "float", id = "floatterm" }
end, { desc = "terminal toggle floating term" })

require "nvchad.mappings"

local map = vim.keymap.set

-- Terminal Mode
map("t", "<C-z>", function()
  require("nvchad.term").toggle { pos = "float", id = "floatTerm" }
end, { desc = "terminal toggle floating term" })

-- Normal Mode
map("n", "<tab>", "gt", { desc = "Tab next tab" })
map("n", "<s-tab>", "gT", { desc = "Tab prev tab" })
map("n", "<leader>tn", "<cmd>tabnew<CR>", { desc = "Tab create tab" })
map("n", "<leader>tc", "<cmd>tabclose<CR>", { desc = "Tab close tab" })
map("n", "<leader>tt", "<cmd>tabnew|terminal<CR>a", { desc = "Tab create terminal tab" })

map("n", ";", ":", { desc = "CMD enter command mode" })
map("n", "<C-z>", "u", { desc = "Undo" })
map("n", "<C-q>", "<Esc>:qa<CR>", { desc = "Exit" })

map("n", "<A-Down>", "<Esc>:NvimTreeFocus<CR>", { desc = "Focus NvimTree" })
map("n", "<A-k>", "<Esc>:lua vim.diagnostic.open_float()<CR>", { desc = "View errors" })

map("n", "<C-x>", function()
  require("nvchad.tabufline").close_buffer()
end, { desc = "Close buffer" })

map("n", "<A-Left>", function()
  require("nvchad.tabufline").prev()
end, { desc = "Prev buffer" })

map("n", "<A-Right>", function()
  require("nvchad.tabufline").next()
end, { desc = "Next buffer" })

-- Visual Mode
map("v", "<C-a>", 'c{`<C-r>"<BS>`}', { desc = "Replace for char u60" })

-- Insert Mode
map("i", "<C-q>", "<Esc>:qa<CR>", { desc = "Exit" })
map("i", "<C-a>", "<Esc>gg<S-v><S-g>", { desc = "Select all" })
map("i", "<A-d>", "<Esc>0i", { desc = "Start of line" })
map("i", "<C-c>", "<Esc><S-v>yi", { desc = "Copy line" })
map("i", "<C-BS>", "<Esc>vbdha", { desc = "Delete prev word" })
map("i", "<C-s>", "<Esc><Cmd>w<CR>", { desc = "Save file" })
map("i", "<C-z>", "<C-o>u", { desc = "Undo" })
map("i", "<C-y>", "<C-o><C-r>", { desc = "Redo" })
map("i", "<C-ñ>", "<Esc>yypi", { desc = "Duplicate line" })
map("i", "<C-v>", "<Esc>v", { desc = "Enter to visual mode" })
map("i", "<C-l>", "<Esc><S-v><Del>i", { desc = "Delete current line" })
map("i", "<C-f>", "<Esc>:Telescope oldfiles<CR>", { desc = "Find recent files" })
map("i", "<C-1>", "<Esc>va", { desc = "Visual around" })

map("i", "<C-x>", function()
  require("nvchad.tabufline").close_buffer()
end, { desc = "Close buffer" })

-- Insert Mode: A = Alt
map("i", "<A-k>", "<Esc>:lua vim.diagnostic.open_float()<CR>", { desc = "View errors" })
map("i", "<A-f>", "<Esc>:Telescope find_files<CR>", { desc = "Find file" })

map("i", "<A-s>", "<Esc>:MCstart<CR>", { desc = "Select concurrences" })

map("i", "<A-Left>", function()
  require("nvchad.tabufline").prev()
end, { desc = "Prev buffer" })

map("i", "<A-Right>", function()
  require("nvchad.tabufline").next()
end, { desc = "Next buffer" })

map("i", "<A-1>", function()
  require("conform").format { lsp_fallback = true }
end, { desc = "General format file" })

map("i", "<A-Down>", "<Esc>:NvimTreeFocus<CR>", { desc = "Focus NvimTree" })

map("i", "<A-i>", function()
  require("nvchad.term").toggle { pos = "float", id = "floatTerm" }
end, { desc = "terminal toggle floating term" })

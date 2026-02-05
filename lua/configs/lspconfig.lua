require("nvchad.configs.lspconfig").defaults()

local servers = { "html", "cssls", "ts_ls", "emmet_ls", "astro", "biome", "intelephense", "phpactor" }

vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers

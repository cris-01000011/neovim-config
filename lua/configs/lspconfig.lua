require("nvchad.configs.lspconfig").defaults()

local lspconfig = require "lspconfig"

local servers = {
  "html",
  "cssls",
  "ts_ls",
  "emmet_ls",
  "astro",
  "biome",
  "intelephense",
  "phpactor",
}

for _, server in ipairs(servers) do
  lspconfig[server].setup {}
end

lspconfig.postgres_lsp.setup {
  cmd = { "postgres-lsp", "stdio" },
  filetypes = { "sql" },
}

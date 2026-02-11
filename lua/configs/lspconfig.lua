require("nvchad.configs.lspconfig").defaults()

local lspconfig = require("lspconfig")

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

lspconfig.ts_ls.setup({
  autostart = true,
})

for _, server in ipairs(servers) do
  lspconfig[server].setup({})
end

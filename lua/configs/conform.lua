local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    css = { "biome" },
    html = { "biome" },
    astro = { "prettier" },
    javascript = { "biome" },
    javascriptreact = { "biome" },
    typescript = { "prettier" },
    typescriptreact = { "prettier" },
    rust = { "rustfmt" },
  },

  format_on_save = {
    timeout_ms = 5000,
    lsp_fallback = true,
  },
}

return options

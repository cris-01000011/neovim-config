return {
  {
    "mrcjkb/rustaceanvim",
    version = "^6", -- Recommended
    lazy = false, -- This plugin is already lazy
    settings = {
      ["rust-analyzer"] = {
        inlayHints = {
          chainingHints = { enable = false },
          closingBraceHints = { enable = false, minLines = 25 },
          parameterHints = { enable = false },
          typeHints = { enable = false },
        },
      },
    },
  },
  {
    "smoka7/multicursors.nvim",
    event = "VeryLazy",
    dependencies = {
      "nvimtools/hydra.nvim",
    },
    opts = {},
    cmd = { "MCstart", "MCvisual", "MCclear", "MCpattern", "MCvisualPattern", "MCunderCursor" },
    keys = {
      {
        mode = { "v", "n" },
        "<Leader>m",
        "<cmd>MCstart<cr>",
        desc = "Create a selection for selected text or word under the cursor",
      },
    },
  },
  {
    "stevearc/conform.nvim",
    -- event = "BufWritePre", -- uncomment for format on save
    opts = require "configs.conform",
  },
  require("conform").setup {
    formatters_by_ft = {
      php = { "php_cs_fixer", "pint" },
    },
    format_on_save = {
      stop_after_first = true,
    },
  },
  vim.lsp.config("lua_ls", {
    settings = {
      Lua = {
        hint = { enable = false },
      },
    },
  }),
  vim.lsp.config("intelephense", {
    settings = {
      intelephense = {
        files = {
          maxSize = 5000000,
        },
      },
    },
  }),
  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },
  -- tailwind-tools.lua
  -- {
  --  "luckasRanarison/tailwind-tools.nvim",
  --  name = "tailwind-tools",
  --  build = ":UpdateRemotePlugins",
  --  dependencies = {
  --    "nvim-treesitter/nvim-treesitter",
  --    "nvim-telescope/telescope.nvim", -- opcional pero recomendado
  --    "neovim/nvim-lspconfig",         -- para usarlo con LSP
  --  },
  --  opts = {
  -- Aquí puedes poner tu configuración personalizada
  --  },
  -- },

  -- test new blink
  -- { import = "nvchad.blink.lazyspec" },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "vimdoc",
        "html",
        "css",
      },
    },
  },
}

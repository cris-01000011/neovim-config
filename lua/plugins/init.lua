return {
  {
    'mrcjkb/rustaceanvim',
    version = '^6', -- Recommended
    lazy = false, -- This plugin is already lazy
  },
  {
    "stevearc/conform.nvim",
    event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },
  {
    "smoka7/multicursors.nvim",
    event = "VeryLazy",
    dependencies = {
      'nvimtools/hydra.nvim',
    },
    opts = {},
    cmd = { 'MCstart', 'MCvisual', 'MCclear', 'MCpattern', 'MCvisualPattern', 'MCunderCursor' },
    keys = {{
      mode = { 'v', 'n' },
      '<Leader>m',
      '<cmd>MCstart<cr>',
      desc = 'Create a selection for selected text or word under the cursor',
    }}
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
  			"vim", "lua", "vimdoc",
       "html", "css"
  		},
  	},
  }
}

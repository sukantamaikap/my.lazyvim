return {
  {
    "folke/tokyonight.nvim",
    lazy = true,
    priority = 1002,
    opts = function()
      return {
        transparent = true,
      }
    end,
  },
  {
    "catppuccin/nvim",
    lazy = false,
    name = "catppuccin",
    priority = 1001,
    opts = function()
      return {
        transparent = true,
        integrations = {
          cmp = true,
          gitsigns = true,
          nvimtree = true,
          treesitter = true,
          notify = false,
          mini = {
            enabled = true,
            indentscope_color = "",
          },
        },
      }
    end,
  },
  {
    "uloco/bluloco.nvim",
    lazy = true,
    priority = 1004,
    dependencies = { "rktjmp/lush.nvim" },
    config = function()
      -- your optional config goes here, see below.
    end,
  },
  {
    "olimorris/onedarkpro.nvim",
    priority = 1006,
    lazy = true,
  },
}

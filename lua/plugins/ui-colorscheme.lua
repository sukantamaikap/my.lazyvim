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
    lazy = true,
    name = "catppuccin",
    priority = 1003,
    opts = function()
      return {
        transparent = true,
      }
    end,
  },
  {
    "uloco/bluloco.nvim",
    lazy = false,
    priority = 1004,
    dependencies = { "rktjmp/lush.nvim" },
    config = function()
      -- your optional config goes here, see below.
    end,
  },
  {
    "ribru17/bamboo.nvim",
    lazy = false,
    priority = 1005,
    config = function()
      require("bamboo").setup({
        -- optional configuration here
      })
      require("bamboo").load()
    end,
  },
  {
    "olimorris/onedarkpro.nvim",
    priority = 1006, -- Ensure it loads first
  },
  {
    "navarasu/onedark.nvim", -- Theme inspired by Atom
    priority = 1007,
  },
}

return {
  {
    "craftzdog/solarized-osaka.nvim",
    branch = "osaka",
    lazy = true,
    priority = 1002,
    opts = function()
      return {
        transparent = true,
      }
    end,
  },
  {
    "folke/tokyonight.nvim",
    lazy = true,
    priority = 1001,
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
    priority = 1000,
    opts = function()
      return {
        transparent = true,
      }
    end,
  },
  {
    "olimorris/onedarkpro.nvim",
    priority = 1003, -- Ensure it loads first
  },
  {
    "navarasu/onedark.nvim", -- Theme inspired by Atom
    priority = 1004,
  },
}

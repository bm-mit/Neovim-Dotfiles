return {
  {
    "craftzdog/solarized-osaka.nvim",
    lazy = true,
    priority = 1000,
    opts = function()
      return {
        background = "transparent",
      }
    end,
  },
  {
    "sainnhe/edge",
    opts = function()
      return { edge_transparent_background = "transparent" }
    end,
  },
}

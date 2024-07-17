return {
  {
    "craftzdog/solarized-osaka.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,
  },
  {
    "tokyonight.nvim",
    opts = function(_, opts)
      opts.transparent = true
      return opts
    end,
  },

  {
    "nvimdev/dashboard-nvim",
    event = "VimEnter",
    opts = function(_, opts)
      local logo = [[
        ██╗   ██╗███╗   ██╗██╗  ██╗██╗
        ██║   ██║████╗  ██║██║  ██║██║
        ██║   ██║██╔██╗ ██║███████║██║
        ██║   ██║██║╚██╗██║██╔══██║██║
        ╚██████╔╝██║ ╚████║██║  ██║██║
         ╚═════╝ ╚═╝  ╚═══╝╚═╝  ╚═╝╚═╝
      ]]

      logo = string.rep("\n", 8) .. logo .. "\n\n"
      opts.config.header = vim.split(logo, "\n")
    end,
  },
}

return {
  {
    "nvim-lualine/lualine.nvim",
    opts = function(_, opts)
      local LazyVim = require("lazyvim.util")

      --
      opts.sections.lualine_c[4] = LazyVim.lualine.pretty_path({
        length = 0,
        relative = "cwd",
        modified_hl = "MatchParen",
        directory_hl = "",
        filename_hl = "Bold",
        modified_sign = "",
        readonly_icon = " 󰌾 ",
      })

      opts.sections.lualine_y = { "progress" }
      opts.sections.lualine_z = { "location" }
    end,
  },
}

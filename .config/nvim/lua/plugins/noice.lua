return {
  {
    "folke/noice.nvim",
    opts = function(_, opts)
      -- stop displaying notifications without information
      table.insert(opts.routes, {
        filter = {
          event = "notify",
          find = "No information available",
        },
        opts = {
          skip = true,
        },
      })

      -- class command line instead of pop-up
      opts.cmdline = {
        view = "cmdline",
      }
      opts.presets = {
        lsp_doc_border = true,
        command_palette = false,
      }
    end,
  },
}

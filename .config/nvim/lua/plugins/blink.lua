return {
  {
    "saghen/blink.cmp",
    enabled = true,

    dependencies = {
      "micangl/cmp-vimtex",
      "saghen/blink.compat",
    },

    opts = function(_, opts)
      opts.snippets = {
        preset = "luasnip",
      }

      vim.list_extend(opts.sources.compat or {}, { "vimtex" })
      opts.completion = {
        menu = {
          border = "single",
        },
        documentation = {
          auto_show = true,
          window = {
            border = "single",
          },
        },
      }

      opts.keymap = {
        preset = "default",
      }
    end,
  },
}

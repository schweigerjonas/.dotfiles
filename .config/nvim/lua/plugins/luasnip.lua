return {
  {
    "L3MON4D3/LuaSnip",
    lazy = true,
    build = "make install_jsregexp",
    opts = {
      history = true,
      delete_check_events = "TextChanged",
    },
    config = function(_, opts)
      local ls = require("luasnip")
      require("luasnip.loaders.from_lua").lazy_load({ paths = { vim.fn.stdpath("config") .. "/snippets" } })

      ls.setup(opts)

      ---@diagnostic disable-next-line: duplicate-set-field
      LazyVim.cmp.actions.snippet_forward = function()
        if ls.jumpable(1) then
          ls.jump(1)
          return true
        end
      end

      ---@diagnostic disable-next-line: duplicate-set-field
      LazyVim.cmp.actions.snippet_stop = function()
        if ls.expand_or_jumpable() then
          ls.unlink_current()
          return true
        end
      end
    end,
  },
}

return {
  {
    "stevearc/oil.nvim",
    ---@module 'oil'
    ---@type oil.SetupOpts
    opts = {
      default_file_explorer = true,

      -- Skip the confirmation popup for simple operations (:help oil.skip_confirm_for_simple_edits)
      skip_confirm_for_simple_edits = true,

      view_options = {
        -- Show files and directories that start with "."
        show_hidden = true,
      },
    },
    dependencies = { { "nvim-mini/mini.icons", opts = {} } },
    lazy = false,
  },
}

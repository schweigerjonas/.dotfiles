return {
  {
    "lervag/vimtex",
    lazy = false,
    config = function()
      -- store window ID when neovim starts
      if vim.g.vim_window_id == nil then
        vim.g.vim_window_id = vim.fn.system("xdotool getactivewindow"):gsub("%s+", "")
      end

      local function tex_refocus_vim()
        vim.cmd("sleep 200m")

        if vim.g.vim_window_id ~= "" then
          vim.fn.system("xdotool windowfocus " .. vim.g.vim_window_id)
          vim.cmd("redraw!")
        end
      end

      vim.api.nvim_create_autocmd("User", {
        pattern = "VimtexEventView",
        callback = function()
          tex_refocus_vim()
        end,
        desc = "Refocus Neovim after Zathura opens compiled document",
      })
    end,
    init = function()
      vim.g.vimtex_imaps_enabled = 0 -- i.e., disable global vimtex settings

      vim.g.vimtex_view_method = "zathura"

      vim.g.vimtex_quickfix_open_on_warning = 0 --  don't open quickfix if there are only warnings
      vim.g.vimtex_quickfix_ignore_filters = {
        "Underfull",
        "Overfull",
        "LaTeX Warning: .\\+ float specifier changed to",
        "Package hyperref Warning: Token not allowed in a PDF string",
      }
    end,
  },
}

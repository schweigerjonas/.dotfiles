return {
  {
    "mason-org/mason.nvim",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        "lua-language-server",
        "svelte-language-server",
        "vue-language-server",
        "typescript-language-server",
        "pyright",
        "css-lsp",
        "tailwindcss-language-server",
        "clangd",
        "gopls",
        "tinymist",
      })
    end,
  },
}

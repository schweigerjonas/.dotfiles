return {
  {
    "mason-org/mason.nvim",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        "lua-language-server",
        "svelte-language-server",
        "vue-language-server",
        "typescript-language-server",
        "vtsls",
        "pyright",
        "css-lsp",
        "tailwindcss-language-server",
        "clangd",
        "gopls",
        "tinymist",
        "typstyle",
        "markdownlint-cli2",
        "markdown-toc",
        "hadolint",
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        tinymist = {
          keys = {
            {
              "<leader>cP",
              function()
                local buf_name = vim.api.nvim_buf_get_name(0)
                local file_name = vim.fn.fnamemodify(buf_name, ":t")
                LazyVim.lsp.execute({
                  title = "Pin Main",
                  filter = "tinymist",
                  command = "tinymist.pinMain",
                  arguments = { buf_name },
                })
                LazyVim.info("Tinymist: Pinned " .. file_name)
              end,
              desc = "Pin main file",
            },
          },
          single_file_support = true,
          settings = {
            formatterMode = "typstyle",
          },
        },
        marksman = {},
        dockerls = {},
        docker_compose_language_service = {},
      },
    },
  },
}

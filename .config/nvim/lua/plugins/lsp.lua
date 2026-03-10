return {
  -- tools
  {
    "mason-org/mason.nvim",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        -- lua tools
        "lua-language-server",
        "stylua",
        "selene",
        "luacheck",

        -- shell tools
        "shellcheck",
        "shfmt",

        -- web development
        "css-lsp",
        "html-lsp",
        "typescript-language-server",
        "tailwindcss-language-server",
        "angular-language-server",
        "svelte-language-server",
        "vue-language-server",

        -- other
        "gopls",
        "clangd",
        "arduino-language-server",
        "tinymist",
      })
    end,
  },

  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        arduino_language_server = {
          cmd = {
            "arduino-language-server",
            "-cli-config",
            vim.fn.expand("~/.arduino15/arduino-cli.yaml"),
            "-fqbn",
            -- change to board type currenty in use
            "arduino:avr:uno",
          },
          capabilities = {
            textDocument = {
              semanticTokens = vim.NIL,
            },
            workspace = {
              semanticTokens = vim.NIL,
            },
          },
        },
        clangd = {},
      },
    },
  },
}

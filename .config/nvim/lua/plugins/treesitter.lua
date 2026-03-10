return {
  {
    "nvim-treesitter/playground",
    cmd = "TSPlaygroundToggle",
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "cpp",
        "cmake",
        "arduino",
        "go",
        "java",
        "css",
        "scss",
        "sql",
        "http",
        "angular",
        "svelte",
        "vue",
        "glimmer",
        "dockerfile",
        "gitignore",
      },
    },
    config = function(_, opts)
      require("nvim-treesitter.configs").setup(opts)

      -- MDX
      vim.filetype.add({
        extension = {
          mdx = "mdx",
        },
      })
      vim.treesitter.language.register("markdown", "mdx")
    end,
  },
}

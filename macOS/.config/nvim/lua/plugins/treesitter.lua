return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    main = "nvim-treesitter",
    opts = {
      auto_install = false,
      ensure_installed = {
        "bash",
        "html",
        "css",
        "javascript",
        "typescript",
        "tsx",
        "json",
        "lua",
        "python",
        "markdown",
        "rust",
        "ruby",
        "sql",
        "go",
        "gomod",
        "gosum",
        "gowork",
      },
      highlight = { enable = true },
      indent = { enable = false },
    },
  }
}

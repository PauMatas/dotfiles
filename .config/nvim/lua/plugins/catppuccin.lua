return {
  {
    "catppuccin/nvim",
    lazy = false,
    name = "catppuccin",
    priority = 1000,

    config = function()
      require("catppuccin").setup({
        transparent_background = true,
        custom_highlights = function (colors)
           return {ColorColumn = { bg = "NONE", fg = colors.overlay0, underline = true },}
        end
      })
      vim.cmd.colorscheme "catppuccin-mocha"
    end
  }
}

return {
  "Vigemus/iron.nvim",
  config = function()
    require("iron.core").setup({
      config = {
        scratch_repl = true,
        repl_definition = {
          python = {
            command = { "ipython", "--no-autoindent" },
            format = require("iron.fts.common").bracketed_paste_python,
            block_dividers = { "# %%", "#%%" },
          },
        },
        repl_open_cmd = require("iron.view").split.vertical.botright(80),
        buflisted = false,
        close_window_on_exit = true,
      },
      keymaps = {
        interrupt = "<leader>ri",
      },
      highlight = { italic = true },
    })

  end,
}

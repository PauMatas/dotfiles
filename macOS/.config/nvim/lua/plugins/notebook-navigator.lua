return {
  {
    "echasnovski/mini.comment",
    event = "VeryLazy",
    opts = {},
  },
  {
    "GCBallesteros/NotebookNavigator.nvim",
    dependencies = {
      "echasnovski/mini.comment",
      "Vigemus/iron.nvim",
    },
    keys = {
      { "<leader>X", function() require("notebook-navigator").run_cell() end, desc = "Run cell" },
      { "<leader>x", function() require("notebook-navigator").run_and_move() end, desc = "Run cell & move" },
      {
        "<leader>x",
        function() require("iron.core").visual_send() end,
        mode = "v",
        desc = "Send selection to REPL",
      },
    },
    opts = {
      repl_provider = "iron",
      cell_markers = { python = "# %%" },
    },
  },
}

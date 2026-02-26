return {
	"ThePrimeagen/git-worktree.nvim",
	dependencies = { "nvim-telescope/telescope.nvim" },
	config = function()
		require("git-worktree").setup()

		vim.keymap.set("n", "<leader>gw", function()
			require("telescope").extensions.git_worktree.git_worktrees()
		end, { desc = "Switch git worktree" })

		vim.keymap.set("n", "<leader>gW", function()
			require("telescope").extensions.git_worktree.create_git_worktree()
		end, { desc = "Create git worktree" })
	end,
}

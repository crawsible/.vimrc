return {
	"aaronhallaert/advanced-git-search.nvim",
	dependencies = {
		"nvim-telescope/telescope.nvim",
		"tpope/vim-fugitive",
		"tpope/vim-rhubarb",
	},
	keys = {
		{ "<leader>gf", "<cmd>AdvancedGitSearch search_log_content_file<cr>" },
	},
	config = function()
		require("telescope").load_extension("advanced_git_search")
	end,
}

return {
	"nvim-telescope/telescope.nvim",
	branch = "0.1.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"sharkdp/fd",
		"nvim-treesitter/nvim-treesitter",
		"nvim-tree/nvim-web-devicons",
	},
	keys = function()
		return {
			{ "<C-F>", require("telescope.builtin").live_grep },
			{ "<leader>f", require("telescope.builtin").live_grep },
			{ "gr", require("telescope.builtin").lsp_references },
			{ "<leader>t", require("telescope.builtin").treesitter },
			{ "<leader>gs", require("telescope.builtin").git_status },
		}
	end,
	opts = {
		defaults = {
			layout_strategy = "vertical",
			layout_config = {
				preview_height = 0.67,
				width = 0.9375,
			},
			path_display = { "smart" },
		},
		pickers = {},
	},
}

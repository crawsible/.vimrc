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
			{ "<C-F>", '<cmd>lua require("telescope.builtin").live_grep()<cr>' },
			{ "<leader>f", '<cmd>lua require("telescope.builtin").live_grep()<cr>' },
			{ "gr", '<cmd>lua require("telescope.builtin").lsp_references()<cr>' },
			{ "<leader>t", '<cmd>lua require("telescope.builtin").treesitter()<cr>' },
			{ "<leader>gs", '<cmd>lua require("telescope.builtin").git_status()<cr>' },
		}
	end,
	opts = {
		defaults = {
			layout_strategy = "vertical",
			layout_config = {
				preview_height = 0.67,
				width = 0.9375,
			},
			path_display = {
				shorten = 3,
				"truncate",
			},
		},
		pickers = {},
	},
}

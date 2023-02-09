return {
	"nvim-lualine/lualine.nvim",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
		"SmiteshP/nvim-navic",
		"nvim-lua/lsp-status.nvim",
	},
	config = function()
		local navic = require("nvim-navic")

		require("lualine").setup({
			sections = {
				lualine_c = {
					{ "filename", path = 1 },
					{ navic.get_location, cond = navic.is_available },
				},
				lualine_x = {
					"require('lsp-status').status()",
				},
				lualine_y = {
					"encoding",
					"filetype",
					"progress",
				},
			},
			options = {
				theme = "everforest",
			},
		})
	end,
}

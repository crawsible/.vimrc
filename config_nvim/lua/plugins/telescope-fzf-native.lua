return {
	"nvim-telescope/telescope-fzf-native.nvim",
	dependencies = {
		"nvim-telescope/telescope.nvim",
	},
	build = "make",
	config = function()
		local telescope = require("telescope")
		telescope.setup()

		telescope.load_extension("fzf")
	end,
}

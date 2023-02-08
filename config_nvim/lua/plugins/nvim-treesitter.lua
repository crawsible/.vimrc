return {
	"nvim-treesitter/nvim-treesitter",
	dependencies = {
		"omnisyle/nvim-hidesig",
	},
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter.configs").setup({
			ensure_installed = { "lua", "ruby" },
			highlight = { enable = true },
			folding = { enable = true },
			hidesig = {
				enable = true,
				opacity = 0.5,
				delay = 200,
			},
		})
	end,
}

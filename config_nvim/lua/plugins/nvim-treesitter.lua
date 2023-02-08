return {
	"nvim-treesitter/nvim-treesitter",
	dependencies = {
		"omnisyle/nvim-hidesig",
		"RRethy/nvim-treesitter-endwise",
	},
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter.configs").setup({
			endwise = {
				enable = true,
			},
			ensure_installed = { "lua", "ruby", "vim", "help" },
			hidesig = {
				enable = true,
				opacity = 0.66,
				delay = 200,
			},
			highlight = { enable = true },
			folding = { enable = true },
		})
	end,
}

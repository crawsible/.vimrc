return {
	"nvim-treesitter/nvim-treesitter",
	dependencies = {
		"omnisyle/nvim-hidesig",
		"RRethy/nvim-treesitter-endwise",
	},
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter.configs").setup({
			ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "help", "ruby" },
			sync_install = false,
			auto_install = true,
			ignore_install = { "javascript" },
			modules = {},
			highlight = {
				enable = true,
				additional_vim_regex_highlighting = true,
			},
			folding = { enable = true },
			indent = { enable = true },
			endwise = {
				enable = true,
			},
			hidesig = {
				enable = true,
				opacity = 0.66,
				delay = 200,
			},
		})
	end,
}

return {
	"lukas-reineke/indent-blankline.nvim",
	main = "ibl",
	dependencies = {
		"nvim-treesitter/nvim-treesitter",
	},
	config = function()
		vim.opt.list = true
		-- vim.opt.listchars:append("space:⋅")
		vim.opt.listchars:append("eol:↴")

		require("ibl").setup({
			indent = {
				char = "▏",
			},
		})
	end,
}

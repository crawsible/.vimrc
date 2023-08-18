return {
	"junegunn/fzf.vim",
	dependencies = {
		"junegunn/fzf",
	},
	config = function()
		vim.keymap.set("n", "<C-P>", ":FZF<CR>")
		vim.keymap.set("n", "<leader>p", ":FZF<CR>")
	end,
}

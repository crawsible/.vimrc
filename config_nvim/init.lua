-- lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

-- load vim baseline
--   set mapleader needs to happen before lazy loads the plugins
vim.cmd.source("~/.vimrc")

require("lazy").setup("plugins")

-- plugin config
vim.keymap.set("n", "<C-P>", ":FZF<CR>")
vim.keymap.set("n", "<C-F>", ":Ag<CR>")

vim.g.loaded_python3_provider = 0
vim.g.loaded_perl_provider = 0

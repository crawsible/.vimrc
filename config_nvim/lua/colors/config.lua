vim.cmd("set termguicolors")
vim.cmd("colorscheme everforest")

local label_id = vim.fn.synIDtrans(vim.fn.hlID("Label"))
local label_fg = vim.fn.synIDattr(label_id, "fg")

vim.cmd(string.format("highlight IndentBlanklineContextChar gui=bold guifg=%s", label_fg))
vim.cmd(string.format("highlight IndentBlanklineContextStart gui=bold,underline guisp=%s", label_fg))

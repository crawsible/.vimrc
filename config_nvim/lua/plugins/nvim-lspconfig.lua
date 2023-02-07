return {
	"neovim/nvim-lspconfig",
	config = function()
		require("lspconfig").sumneko_lua.setup({
			on_attach = function()
				vim.cmd([[ autocmd BufWritePre <buffer> lua require('stylua-nvim').format_file() ]])
			end,
			settings = {
				Lua = {
					runtime = {
						version = "LuaJIT",
					},
					diagnostics = {
						globals = { "vim" },
					},
					workspace = {
						library = vim.api.nvim_get_runtime_file("", true),
					},
					telemetry = {
						enable = false,
					},
				},
			},
			capabilities = require("cmp_nvim_lsp").default_capabilities(),
		})
	end,
}

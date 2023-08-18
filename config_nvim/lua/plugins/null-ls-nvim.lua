return {
	"jose-elias-alvarez/null-ls.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	config = function()
		local null_ls = require("null-ls")
		local lsp_format = require("lsp-format")

		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.beautysh,
				null_ls.builtins.diagnostics.rubocop.with({ prefer_local = "bin" }),
				null_ls.builtins.formatting.rubocop.with({ prefer_local = "bin" }),
				null_ls.builtins.formatting.rustfmt,
				null_ls.builtins.formatting.stylua,
			},
			on_attach = function(client)
				lsp_format.on_attach(client)
			end,
		})
	end,
}

local lsp_formatting = function()
	vim.lsp.buf.format({
		timeout_ms = 5000,
		filter = function(client)
			return client.name == "null-ls"
		end,
	})
end

return {
	"jose-elias-alvarez/null-ls.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	config = function()
		local null_ls = require("null-ls")

		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.beautysh,
				null_ls.builtins.diagnostics.rubocop.with({ prefer_local = "bin" }),
				null_ls.builtins.formatting.rubocop.with({ prefer_local = "bin" }),
				null_ls.builtins.formatting.rustfmt,
				null_ls.builtins.formatting.stylua,
			},
		})

		vim.api.nvim_create_autocmd({ "BufWritePre" }, {
			callback = lsp_formatting,
		})
	end,
}

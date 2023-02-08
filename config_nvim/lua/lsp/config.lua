local cmp_lsp = require("cmp_nvim_lsp")
local lspconfig = require("lspconfig")
local lsp_status = require("lsp-status")
local navic = require("nvim-navic")

local capabilities = vim.tbl_extend("keep", cmp_lsp.default_capabilities(), lsp_status.capabilities)

local opts = { noremap = true, silent = true }
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, opts)
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, opts)
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, opts)

local on_attach = function(_, bufnr)
	local bufopts = { noremap = true, silent = true, buffer = bufnr }

	vim.keymap.set("n", "gD", vim.lsp.buf.declaration, bufopts)
	vim.keymap.set("n", "gd", vim.lsp.buf.definition, bufopts)
	vim.keymap.set("n", "gr", vim.lsp.buf.references, bufopts)
	vim.keymap.set("n", "K", vim.lsp.buf.hover, bufopts)
	vim.keymap.set("n", "gi", vim.lsp.buf.implementation, bufopts)
	vim.keymap.set("n", "<leader>D", vim.lsp.buf.type_definition, bufopts)
	vim.keymap.set("n", "<F2>", vim.lsp.buf.rename, bufopts)
end

lspconfig.sumneko_lua.setup({
	on_attach = function(client, bufnr)
		on_attach(_, bufnr)
		lsp_status.on_attach(client)
		navic.attach(client, bufnr)

		vim.cmd("autocmd BufWritePre <buffer> lua require('stylua-nvim').format_file()")
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
				checkThirdParty = false,
			},
			telemetry = {
				enable = false,
			},
		},
	},
	capabilities = capabilities,
})

lspconfig.sorbet.setup({
	on_attach = function(_, bufnr)
		on_attach(_, bufnr)
	end,
	capabilities = capabilities,
})

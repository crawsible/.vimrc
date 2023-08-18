local cmp_lsp = require("cmp_nvim_lsp")
local lspconfig = require("lspconfig")
local lsp_status = require("lsp-status")
local navic = require("nvim-navic")

local capabilities = vim.tbl_extend("keep", cmp_lsp.default_capabilities(), lsp_status.capabilities)

local opts = { noremap = true, silent = true }
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, opts)
vim.keymap.set("n", "gn", vim.diagnostic.goto_next, opts)
vim.keymap.set("n", "gN", vim.diagnostic.goto_prev, opts)

local on_attach = function(_, bufnr)
	local bufopts = { noremap = true, silent = true, buffer = bufnr }

	vim.keymap.set("n", "gd", vim.lsp.buf.definition, bufopts)
	vim.keymap.set("n", "gD", vim.lsp.buf.declaration, bufopts)
	vim.keymap.set("n", "K", vim.lsp.buf.hover, bufopts)
	vim.keymap.set("n", "gi", vim.lsp.buf.implementation, bufopts)
	vim.keymap.set("n", "<leader>D", vim.lsp.buf.type_definition, bufopts)
	vim.keymap.set("n", "<F2>", vim.lsp.buf.rename, bufopts)
end

lspconfig.lua_ls.setup({
	on_attach = function(client, bufnr)
		on_attach(_, bufnr)

		lsp_status.on_attach(client)
		navic.attach(client, bufnr)
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

lspconfig.rust_analyzer.setup({
	on_attach = function(_, bufnr)
		on_attach(_, bufnr)
	end,
	cmd = { "rustup", "run", "stable", "rust-analyzer" },
	capabilities = capabilities,
})

lspconfig.tsserver.setup({
	on_attach = function(_, bufnr)
		on_attach(_, bufnr)
	end,
	capabilities = capabilities,
})

lspconfig.kotlin_language_server.setup({
	on_attach = function(_, bufnr)
		on_attach(_, bufnr)
	end,
	capabilities = capabilities,
})

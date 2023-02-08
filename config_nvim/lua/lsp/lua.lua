local cmp_lsp = require("cmp_nvim_lsp")
local lspconfig = require("lspconfig")
local lsp_status = require("lsp-status")
local navic = require("nvim-navic")

local capabilities = vim.tbl_extend("keep", cmp_lsp.default_capabilities(), lsp_status.capabilities)

lspconfig.sumneko_lua.setup({
	on_attach = function(client, bufnr)
		lsp_status.on_attach(client)
		navic.attach(client, bufnr)

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
				checkThirdParty = false,
			},
			telemetry = {
				enable = false,
			},
		},
	},
	capabilities = capabilities,
})

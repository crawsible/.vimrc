local cmp_lsp = require("cmp_nvim_lsp")
local lspconfig = require("lspconfig")
local lsp_status = require("lsp-status")

local capabilities = vim.tbl_extend("keep", cmp_lsp.default_capabilities(), lsp_status.capabilities)

lspconfig.sorbet.setup({
	cmd = { "srb", "tc", "--lsp", "-v" },
	capabilities = capabilities,
})

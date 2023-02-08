return {
	"windwp/nvim-autopairs",
	config = function()
		local autopairs = require("nvim-autopairs")
		local cmp = require("cmp")
		local completion_cmp = require("nvim-autopairs.completion.cmp")

		autopairs.setup({})
		autopairs.add_rules(require("nvim-autopairs.rules.endwise-lua"))
		autopairs.add_rules(require("nvim-autopairs.rules.endwise-ruby"))

		cmp.event:on("confirm_done", completion_cmp.on_confirm_done())
	end,
}

return {
	"nvimtools/none-ls.nvim",

	config = function()
		local null_ls = require("null-ls")

		null_ls.setup({
			sources = {
				-- lua
				null_ls.builtins.formatting.stylua,

				--python
				null_ls.builtins.formatting.black,
        null_ls.builtins.formatting.isort,

        --go
        null_ls.builtins.formatting.goimports,
        null_ls.builtins.diagnostics.golangci_lint,

        --javascript
        null_ls.builtins.formatting.prettier

			},
		})

		vim.keymap.set("n", "<leader>cf", vim.lsp.buf.format, { desc = "Format code" })
	end,
}

return {
	"nvim-lualine/lualine.nvim",
	dependencies = "KadoBOT/nvim-spotify",

	config = function()
		local status = require("nvim-spotify").status

		status:start()

		require("lualine").setup({
			options = {
				theme = "catppuccin-mocha",
				sections = {
					lualine_a = {
						file = 1,
					},

					lualine_x = {
						status.listen,
					},
				},
			},
		})
	end,
}

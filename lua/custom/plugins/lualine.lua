return {
	{
		"hoob3rt/lualine.nvim",
		config = function()
			require("lualine").setup({
				options = {
					theme = "terafox",
					section_separators = "",
					component_separators = "",
				},
				tabline = {
					lualine_a = {},
					lualine_b = {
						{
							"buffers",
							symbols = {
								modified = " ●", -- Text to show when the buffer is modified
								alternate_file = "", -- Text to show to identify the alternate file
								directory = "", -- Text to show when the buffer is a directory
							},
							icons_enabled = false,
							max_length = vim.o.columns * 2 / 3,
						},
					},
					lualine_c = {
						{
							"filename",
							path = 1,
						},
					},
					lualine_y = {
						--{
						--    'filetype',
						--    colored = false,
						--},
					},
					lualine_z = {},
				},
			})
		end,
	},
}

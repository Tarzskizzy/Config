return {
	--ident blank line pluguin
	{
		"lukas-reineke/indent-blankline.nvim",
		main = "ibl",
		opts = {},
		init = function()
			require("ibl").setup({
				indent = {
        char = "▏",
        --Default: ▎ or ▏  
				},
				scope = {
					enabled = true,
					show_start = false,
					show_end = false,
					injected_languages = false,
					include = {
						node_type = { ["*"] = { "*" } },
					},
				},
			})
		end,
	},
}

-- Fancier statusline
return {
	'nvim-lualine/lualine.nvim',
	-- Set lualine as statusline
	config = function()
		-- See `:help lualine.txt`
		require('lualine').setup {
			options = {
				icons_enabled = true,
				-- theme = 'tokyonight',
				theme = 'rose-pine',
				-- theme = 'dracula-nvim',
				-- theme = 'embark',
				component_separators = '|',
				section_separators = '',
			},
		}
	end
}

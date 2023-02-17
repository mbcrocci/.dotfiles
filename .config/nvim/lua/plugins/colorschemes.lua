-- Themes
return {
	{ 'navarasu/onedark.nvim' }, -- Theme inspired by Atom
	{ 'folke/tokyonight.nvim', opts = {
		style = 'moon',
		styles = {
			comments = { italic = false },
			keywords = { italic = false }
		}
	} },
	{ 'catppuccin/nvim', name = 'catppuccin', opts = {
		flavour = "macchiato",
		no_italics = true
	} },
	{ 'rose-pine/neovim', name = 'rose-pine', opts = {
		dark_variant = 'moon',
		disable_background = true,
		disable_italics = true
	} },

	{ 'loctvl842/monokai-pro.nvim', opts = {
		italic_comments = true,
		filter = "spectrum"
	} },
	{ 'sainnhe/everforest' },
	{ 'sainnhe/sonokai' },
	{ 'tjdevries/gruvbuddy.nvim', dependencies = { 'tjdevries/colorbuddy.vim' } },
	{ 'luisiacc/gruvbox-baby' },
	{ 'ellisonleao/gruvbox.nvim' },
	{ 'sainnhe/gruvbox-material' },
	{ 'Mofiqul/dracula.nvim', opts = {
		italic_comment = false,
	} },
	{ 'embark-theme/vim', name = 'embark' },
	{ 'olimorris/onedarkpro.nvim' },
	{ 'olivercederborg/poimandres.nvim' },
	{ 'projekt0n/github-nvim-theme', tag = 'v0.0.7' },
}

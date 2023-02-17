return {
	{ -- LSP Configuration & Plugins
		'neovim/nvim-lspconfig',
		dependencies = {
			-- Automatically install LSPs to stdpath for neovim
			'williamboman/mason.nvim',
			'williamboman/mason-lspconfig.nvim',

			-- Useful status updates for LSP
			'j-hui/fidget.nvim',

			-- Additional lua configuration, makes nvim stuff amazing
			'folke/neodev.nvim',
		},
	},
	{ -- Autocompletion
		'hrsh7th/nvim-cmp',
		dependencies = { 'hrsh7th/cmp-nvim-lsp', 'L3MON4D3/LuaSnip', 'saadparwaiz1/cmp_luasnip' },
	},

	{ -- Highlight, edit, and navigate code
		'nvim-treesitter/nvim-treesitter',
		build = function()
			pcall(require('nvim-treesitter.install').update { with_sync = true })
		end,
		dependencies = {
			'nvim-treesitter/nvim-treesitter-textobjects'
		}
	},

	{ "dstein64/vim-startuptime", cmd = "StartupTime" },

	-- Git related plugins
	{ 'tpope/vim-fugitive' },
	{ 'tpope/vim-rhubarb' },
	{},

	-- Add indentation guides even on blank lines
	{ 'lukas-reineke/indent-blankline.nvim', config = {
		char = '┊',
		show_trailing_blankline_indent = false,
	} },

	{ 'numToStr/Comment.nvim', config = true }, -- "gc" to comment visual regions/lines
	{ 'tpope/vim-sleuth' }, -- Detect tabstop and shiftwidth automatically
	{ 'akinsho/bufferline.nvim', branch = "v3.*", dependencies = 'nvim-tree/nvim-web-devicons', config = true },

	-- Fuzzy Finder (files, lsp, etc)
	{ 'nvim-telescope/telescope.nvim', branch = '0.1.x', dependencies = { 'nvim-lua/plenary.nvim' } },

	-- Fuzzy Finder Algorithm which dependencies local dependencies to be built. Only load if `make` is available
	{ 'nvim-telescope/telescope-fzf-native.nvim', build = 'make', cond = vim.fn.executable 'make' == 1 },
}

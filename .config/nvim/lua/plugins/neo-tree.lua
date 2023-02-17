return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v2.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
		"MunifTanjim/nui.nvim",
	},
	keys = {
		{ '<leader>t', "<cmd>Neotree toggle<cr>" },
		{ '<leader>b', "<cmd>Neotree toggle buffers<cr>" },
	}
}

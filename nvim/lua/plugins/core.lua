return {
	{ "folke/lazy.nvim", version = false },
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		version = false,
	},
	{
		"LazyVim/LazyVim",
		version = false,
		opts = {
			colorscheme = "catppuccin-frappe",
		},
	},
	{
		"christoomey/vim-tmux-navigator",
		cmd = {
			"TmuxNavigateLeft",
			"TmuxNavigateDown",
			"TmuxNavigateUp",
			"TmuxNavigateRight",
		},
		keys = {
			{ "<c-h>", "<cmd><C-U>TmuxNavigateLeft<cr>" },
			{ "<c-j>", "<cmd><C-U>TmuxNavigateDown<cr>" },
			{ "<c-k>", "<cmd><C-U>TmuxNavigateUp<cr>" },
			{ "<c-l>", "<cmd><C-U>TmuxNavigateRight<cr>" },
		},
	},
}

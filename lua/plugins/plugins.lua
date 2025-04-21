local themes = require('themes')

return {
	{ 'akinsho/toggleterm.nvim', version = "*", config = true },	

	"mrjones2014/smart-splits.nvim",

	'famiu/bufdelete.nvim',

	"tpope/vim-sleuth",

	{ "m-demare/hlargs.nvim",    opts = {} },

	{ "m4xshen/autoclose.nvim",  opts = {} },

	"lewis6991/gitsigns.nvim",
	"f-person/git-blame.nvim",

	{
		"kdheepak/lazygit.nvim",
		dependencies = {
			"nvim-lua/plenary.nvim"
		}
	},

	{
		"folke/trouble.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		opts = {}
	},

	"nvimtools/none-ls.nvim",

	"davidmh/cspell.nvim",

	{ 'lukas-reineke/indent-blankline.nvim', main = 'ibl', opts = {} },

	{
		"Mr-LLLLL/lualine-ext.nvim",
		event = "VeryLazy",
		dependencies = {
			"nvim-lualine/lualine.nvim",
		},
	},

	{
		'nvimdev/hlsearch.nvim',
		event = 'BufRead',
		config = function()
			require("hlsearch").setup()
		end
	},

	{
		"petertriho/nvim-scrollbar",
		opts = {}
	},

	{
		"akinsho/bufferline.nvim",
		version = "*",
		dependencies = "nvim-tree/nvim-web-devicons"
	},

	{
		"rcarriga/nvim-dap-ui",
		dependencies = {
			"mfussenegger/nvim-dap",
			"folke/neodev.nvim",
		}
	},

	{
		"nvim-neotest/neotest",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"antoinemadec/FixCursorHold.nvim",
			"nvim-neotest/nvim-nio",
			-- ADAPTERS
			"haydenmeade/neotest-jest",
			"nvim-neotest/neotest-go",
			"olimorris/neotest-phpunit"
		}
	},

	-- COMMENTARIES
	{
		"folke/todo-comments.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
		opts = {}
	},

	{
		"danymat/neogen",
		dependencies = "nvim-treesitter/nvim-treesitter",
		config = true,
	},

	{
		"numToStr/Comment.nvim",
		opts = {},
		lazy = false,
	},

	{
		"folke/zen-mode.nvim",
		opts = {}
	},

	themes
}

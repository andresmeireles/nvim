return {
	{ 'akinsho/toggleterm.nvim', version = "*", config = true },

	{
		"nvim-tree/nvim-tree.lua",
		dependencies = {
			"nvim-tree/nvim-web-devicons"
		},
	},

	"folke/which-key.nvim",

	-- {
	-- 	"nvim-neo-tree/neo-tree.nvim",
	-- 	branch = "v3.x",
	-- 	dependencies = {
	-- 		"nvim-lua/plenary.nvim",
	-- 		"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
	-- 		"MunifTanjim/nui.nvim",
	-- 	}
	-- },

	'famiu/bufdelete.nvim',

	"tpope/vim-sleuth",

	{ "m4xshen/autoclose.nvim",  opts = {} },

	"lewis6991/gitsigns.nvim",

	"tpope/vim-surround",

	{
		"folke/trouble.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		opts = {}
	},

	{
		"neovim/nvim-lspconfig",
		dependencies = {
			{ 'williamboman/mason.nvim',           opts = {} },
			{ 'williamboman/mason-lspconfig.nvim', opts = {} },
			{ "j-hui/fidget.nvim",                 tag = "legacy", opts = {} },
			{ "folke/neodev.nvim",                 opts = {} }
		},
	},

	{
		-- Autocompletion
		'hrsh7th/nvim-cmp',
		dependencies = {
			-- Snippet Engine & its associated nvim-cmp source
			'L3MON4D3/LuaSnip',
			'saadparwaiz1/cmp_luasnip',

			-- Adds LSP completion capabilities
			'hrsh7th/cmp-nvim-lsp',

			-- Adds a number of user-friendly snippets
			'rafamadriz/friendly-snippets',
		},
	},

	"nvimtools/none-ls.nvim",

	{ 'lukas-reineke/indent-blankline.nvim', main = 'ibl',  opts = {} },

	'nvim-lualine/lualine.nvim',

	{
		'nvim-treesitter/nvim-treesitter',
		dependencies = {
			'nvim-treesitter/nvim-treesitter-textobjects',
		},
		build = ':TSUpdate',
	},

	-- TELESCOPE
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.4",
		dependencies = {
			"nvim-lua/plenary.nvim",
		}
	},

	{ "akinsho/bufferline.nvim",             version = "*", dependencies = "nvim-tree/nvim-web-devicons" },

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
			-- ADAPTERS
			"haydenmeade/neotest-jest"
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

	-- COLOR SCHEMES
	"rebelot/kanagawa.nvim"
}

local themes = require('themes')

return {
	{ 'akinsho/toggleterm.nvim', version = "*", config = true },

	-- {
	-- 	"nvim-tree/nvim-tree.lua",
	-- 	dependencies = {
	-- 		"nvim-tree/nvim-web-devicons"
	-- 	},
	-- },

	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
			"MunifTanjim/nui.nvim",
			"3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
		}
	},

	"mrjones2014/smart-splits.nvim",

	{
		'kevinhwang91/nvim-ufo',
		dependencies = {
			'kevinhwang91/promise-async',
			{
				"luukvbaal/statuscol.nvim",
				config = function()
					local builtin = require("statuscol.builtin")
					require("statuscol").setup({
						relculright = true,
						segments = {
							{ text = { builtin.foldfunc },      click = "v:lua.ScFa" },
							{ text = { "%s" },                  click = "v:lua.ScSa" },
							{ text = { builtin.lnumfunc, " " }, click = "v:lua.ScLa" },
						},
					})
				end,
			},
		}
	},

	"folke/which-key.nvim",

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

	-- "nvimtools/none-ls.nvim",
	{ 'stevearc/conform.nvim', opts = {} },

	{ 'mfussenegger/nvim-lint' },

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
		'nvim-treesitter/nvim-treesitter',
		dependencies = {
			'nvim-treesitter/nvim-treesitter-textobjects',
		},
		build = ':TSUpdate',
	},

	{
		"echasnovski/mini.cursorword",
		version = '*',
		opts = {}
	},

	{
		"NvChad/nvim-colorizer.lua",
		opts = {}
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

	-- TELESCOPE
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.4",
		dependencies = {
			"nvim-lua/plenary.nvim",
		}
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

	-- php
	{
		"gbprod/phpactor.nvim",
		build = function()
			require("phpactor.handler.update")() -- To install/update phpactor when installing this plugin
		end,
		ft = 'php',
		dependencies = {
			"nvim-lua/plenary.nvim", -- required to update phpactor
			"neovim/nvim-lspconfig" -- required to automaticly register lsp serveur
		},
		config = function()
			require("phpactor").setup({
				lspconfig = {
					enabled = false
				}
			})
		end
	},

	themes
}

local fn = vim.fn
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
    use 'wbthomason/packer.nvim'
    -- treesitter
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
    use { 'romgrk/nvim-treesitter-context', run = ':TSContextEnable' }
    use {
      'nvim-telescope/telescope.nvim',
      requires = { {'nvim-lua/plenary.nvim'} }
    }
    -- per project settings
    use 'windwp/nvim-projectconfig' 
    -- dashboard
    --use {
    --  'goolord/alpha-nvim',
    --  requires = { 'kyazdani42/nvim-web-devicons' }
    --}
    use 'glepnir/dashboard-nvim'
    -- autopairs
    use 'windwp/nvim-autopairs'
    -- use 'jiangmiao/auto-pairs'
    --lsp
    use 'neovim/nvim-lspconfig'
    use 'ray-x/lsp_signature.nvim'
    use {
        "folke/trouble.nvim",
        requires = "kyazdani42/nvim-web-devicons"
    }
    -- autocomple
    use {
        'hrsh7th/cmp-nvim-lsp',
        require = {
            use 'hrsh7th/cmp-buffer',
            use 'hrsh7th/cmp-path',
            use 'hrsh7th/cmp-cmdline',
            use 'hrsh7th/nvim-cmp',
            use 'L3MON4D3/LuaSnip',
            use 'saadparwaiz1/cmp_luasnip'
        }
    }
    -- scrollbar
    use 'petertriho/nvim-scrollbar'
    -- registers
    use "tversteeg/registers.nvim"
    -- undotree
    use 'mbbill/undotree'
    -- statusline
    use 'nvim-lualine/lualine.nvim'
    use 'arkav/lualine-lsp-progress'
    -- cursorline
    use 'yamatsum/nvim-cursorline'
    -- file manager
    use 'kyazdani42/nvim-tree.lua'
    -- tabline
    use {'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons'}
    --[[ use {
      'romgrk/barbar.nvim',
      requires = {'kyazdani42/nvim-web-devicons'}
    } ]]
    -- buffer
    use 'famiu/bufdelete.nvim'
    -- hop
    use 'phaazon/hop.nvim'
    -- surround
    use 'tpope/vim-surround'
    -- autosave
    use '907th/vim-auto-save'
    -- spellcheck && lint (for now)
    use 'dense-analysis/ale'
    --use { 'neoclide/coc.nvim', branch = 'release', run = ":CocInstall coc-spell-checker coc-cspell-dicts @yaegassy/coc-phpstan coc-psalm"} 
    use { 'neoclide/coc.nvim', branch = 'release', run = ":CocInstall coc-spell-checker coc-cspell-dicts"}
    -- git
    use {
      'lewis6991/gitsigns.nvim',
      requires = {
        'nvim-lua/plenary.nvim'
      }
    }
    use 'f-person/git-blame.nvim'
    -- better escape
    use 'max397574/better-escape.nvim'
    -- indent line
    use "lukas-reineke/indent-blankline.nvim"
    -- todo highlight
    use {
      "folke/todo-comments.nvim",
      requires = "nvim-lua/plenary.nvim",
      config = function()
        require("todo-comments").setup {}
      end
    }
    -- commentary
    use 'b3nj5m1n/kommentary'
    -- icons
    use 'kyazdani42/nvim-web-devicons'
    -- terminal
    use "akinsho/toggleterm.nvim"
    -- PROGRAMING
    -- doge - documentantion
    use {'kkoomen/vim-doge', run = ':call doge#install()'}
    -- test
    use 'vim-test/vim-test'
    -- php
    -- phpactor
    use { 'phpactor/phpactor', ft = 'php',  run = 'composer install --no-dev -o' }
    -- END PROGRAMING
    -- themes
    use {"dracula/vim", as = "dracula"} 
    use 'sainnhe/sonokai'
    use 'sainnhe/gruvbox-material' 
end)

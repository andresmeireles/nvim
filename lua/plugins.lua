local fn = vim.fn
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
    use 'wbthomason/packer.nvim'
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
    use {
      'nvim-telescope/telescope.nvim',
      requires = { {'nvim-lua/plenary.nvim'} }
    }
    -- autopairs
    use 'windwp/nvim-autopairs'
    --lsp
    use 'neovim/nvim-lspconfig'
    use 'ray-x/lsp_signature.nvim'
    use 'glepnir/lspsaga.nvim'
    -- autocomple
    --[[ use { 'ms-jpq/coq_nvim', branch = "coq"}
    use {'ms-jpq/coq.artifacts', branch = "artifacts"} ]]
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-vsnip'
    use 'hrsh7th/vim-vsnip'
   -- use 'SirVer/ultisnips'
    --use 'quangnguyen30192/cmp-nvim-ultisnips'
    -- registers
    use "tversteeg/registers.nvim"
    -- undotree
    use 'mbbill/undotree'
    -- statusline
    use 'nvim-lualine/lualine.nvim'
    -- file manager
    use 'kyazdani42/nvim-tree.lua'
    --use {'ms-jpq/chadtree', branch = 'chad', run = "python3 -m chadtree deps" }
    -- tabline
    use {
      'romgrk/barbar.nvim',
      requires = {'kyazdani42/nvim-web-devicons'}
    }
    -- buffer
    use 'famiu/bufdelete.nvim'
    -- hop
    use 'phaazon/hop.nvim'
    -- surround
    --use "blackCauldron7/surround.nvim"
    use 'tpope/vim-surround'
    -- autosave
    use "Pocco81/AutoSave.nvim"
    -- spellcheck TODO corrigir melhor o português
    use { 'neoclide/coc.nvim', branch = 'release', run = ":CocInstall coc-spell-checker coc-cspell-dicts"}
    -- use 'kamykn/spelunker.vim'
    -- use 'kamykn/popup-menu.nvim' -- esse pacote é muito grande e problemático é melhor que ele seja instalado separadamente.
    --use 'lewis6991/spellsitter.nvim'
    -- git
    use {
      'lewis6991/gitsigns.nvim',
      requires = {
        'nvim-lua/plenary.nvim'
      }
    }
    use 'f-person/git-blame.nvim'
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
    -- PROGRAMING
    -- lint
    use 'dense-analysis/ale'
    -- doge - documentantion
    use {'kkoomen/vim-doge', run = ':call doge#install()'}
    -- test
    use 'vim-test/vim-test'
    -- php
    -- phpactor
    use { 'phpactor/phpactor',  run = 'composer install --no-dev -o' }
    -- END PROGRAMING
    -- themes
    use 'mangeshrex/uwu.vim'
    use {'rose-pine/neovim', as = 'rose-pine'}
    use "projekt0n/github-nvim-theme"
    use {"dracula/vim", as = "dracula"}
    use 'navarasu/onedark.nvim'
    use 'yonlu/omni.vim'
    use 'mhartington/oceanic-next'
    use 'folke/tokyonight.nvim'
    use 'bluz71/vim-moonfly-colors'
    use 'marko-cerovac/material.nvim'
    use "rafamadriz/neon"
end)

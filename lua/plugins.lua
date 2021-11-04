vim.cmd [[packadd packer.nvim]]

-- vim._update_package_paths()

return require('packer').startup(function()
    use 'wbthomason/packer.nvim'
    use '9mm/vim-closer'
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
    use {
      'nvim-telescope/telescope.nvim',
      requires = { {'nvim-lua/plenary.nvim'} }
    }
    --lsp
    use 'neovim/nvim-lspconfig'
    use 'ray-x/lsp_signature.nvim'
    use 'glepnir/lspsaga.nvim'
    -- autocomple
    -- use { 'ms-jpq/coq_nvim', branch = "coq"}
    --  use {'ms-jpq/coq.artifacts', branch = "artifacts"}
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
    -- statusline
    use 'nvim-lualine/lualine.nvim'
    -- file manager
    use 'kyazdani42/nvim-tree.lua'
    -- surround
    use {
        "blackCauldron7/surround.nvim", config = function()
          require"surround".setup {mappings_style = "sandwich"}
        end
    }
    -- autosave
    use "Pocco81/AutoSave.nvim"
    -- spellcheck TODO corrigir melhor o português
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
    -- END PROGRAMING
    -- themes
    use 'mangeshrex/uwu.vim'
    use {'rose-pine/neovim', as = 'rose-pine'}
    use "projekt0n/github-nvim-theme"
    use {"dracula/vim", as = "dracula"}
    use 'navarasu/onedark.nvim'
    use 'yonlu/omni.vim'
    use {'PHSix/nvim-hybrid', config = function() require('hybrid') end }
    use 'mhartington/oceanic-next'
    use 'folke/tokyonight.nvim'
    use 'bluz71/vim-moonfly-colors'
    use 'marko-cerovac/material.nvim'
    use "rafamadriz/neon"
end)

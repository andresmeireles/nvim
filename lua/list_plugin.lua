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
    use {
      'neovim/nvim-lspconfig',
      'williamboman/nvim-lsp-installer'
    }
    use 'ray-x/lsp_signature.nvim'
    use 'glepnir/lspsaga.nvim'
    use { 
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-buffer',
      'hrsh7th/nvim-cmp'
    }
    use {
      'hrsh7th/cmp-vsnip',
      'hrsh7th/vim-vsnip'
    }
    -- lint
    --use 'mfussenegger/nvim-lint'
    use 'mattn/efm-langserver'
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

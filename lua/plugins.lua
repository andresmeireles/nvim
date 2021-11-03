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
    use { 'ms-jpq/coq_nvim', branch = "coq"}
    use {'ms-jpq/coq.artifacts', branch = "artifacts"}
    -- registers
    use "tversteeg/registers.nvim"
    -- statusline
    use 'nvim-lualine/lualine.nvim'
    -- file manager
    use 'kyazdani42/nvim-tree.lua'
    -- utils
    use {
        "blackCauldron7/surround.nvim", config = function()
          require"surround".setup {mappings_style = "sandwich"}
        end
    }
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

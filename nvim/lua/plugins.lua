vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)

  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
    'lewis6991/gitsigns.nvim', requires = { 'nvim-lua/plenary.nvim' },
  }

  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }

  use 'nvim-lua/plenary.nvim'

  use 'nvim-lua/popup.nvim'

  use {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.1',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  use {
    'srcery-colors/srcery-vim',
    as = 'srcery'
  }

  use 'rebelot/kanagawa.nvim'

  use {
    'mhinz/vim-startify',
    as = 'vim-startify'
  }

  use {
    'frazrepo/vim-rainbow',
    as = 'vim-rainbow'
  }

  use {
    'folke/lsp-colors.nvim',
    as = 'lsp-colors'
  }

  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }

  use {
    'preservim/nerdtree',
    as = 'nerdtree'
  }

  use {
    'Xuyuanp/nerdtree-git-plugin',
    requires = {'preservim/nerdtree', 'ryanoasis/vim-devicons'}
  }

  use {
    'voldikss/vim-floaterm',
    as = 'vim-floatterm'
  }

  use {
    'jiangmiao/auto-pairs',
    as = 'auto-pairs'
  }

  use {
    'fatih/vim-go',
    as = 'vim-go',
    run = ':GoUpdateBinaries'
  }

  use {
    'neoclide/coc.nvim',
    as = 'coc',
    branch = 'master',
    run = 'yarn install --frozen-lockfile'
  }

  use {
    'fannheyward/telescope-coc.nvim',
    as = 'telescope-coc'
  }

  use {
    'preservim/vim-markdown',
    requires = {'godlygeek/tabular'}
  }

  use 'nanotech/jellybeans.vim'

  use { "bluz71/vim-nightfly-colors", as = "nightfly" }

  use 'navarasu/onedark.nvim'

  use 'wojciechkepka/vim-github-dark'

  use 'dracula/vim'

  use 'preservim/nerdcommenter'
end)

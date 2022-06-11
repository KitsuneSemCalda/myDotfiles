#!/usr/bin/env lua

vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  use 'wbthomason/packer.nvim'
  use 'neovim/nvim-lspconfig'
  use 'anott03/nvim-lspinstall'
  use 'nvim-treesitter/nvim-treesitter'
  use 'ms-jpq/coq_nvim'
  use 'norcalli/nvim-colorizer.lua'
  use 'shaunsingh/moonlight.nvim'
  use 'ryanoasis/vim-devicons'
  use 'kyazdani42/nvim-web-devicons'
  use 'yamatsum/nvim-nonicons'
  use 'preservim/nerdtree'
  use 'Xuyuanp/nerdtree-git-plugin'
  use 'tiagofumo/vim-nerdtree-syntax-highlight'
  use 'PhilRunninger/nerdtree-buffer-ops'
  use 'windwp/nvim-autopairs'
  use "Pocco81/TrueZen.nvim"
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'saadparwaiz1/cmp_luasnip'
  use 'L3MON4D3/LuaSnip'
  use 'rafamadriz/friendly-snippets'
  use 'ray-x/lsp_signature.nvim'
  use {'tzachar/cmp-tabnine', run='./install.sh', requires = 'hrsh7th/nvim-cmp'}
  use 'onsails/lspkind-nvim'
end)

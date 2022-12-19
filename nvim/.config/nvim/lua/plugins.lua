local status, packer = pcall(require, 'packer')
if (not status) then
  print("Packer is not installed")
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'nvim-lua/plenary.nvim' -- Common utilities
  -- colorscheme
  use 'navarasu/onedark.nvim'

  use 'nvim-tree/nvim-web-devicons' -- dev icons, required by lualine
  use 'nvim-lualine/lualine.nvim' -- Statusline
  use 'neovim/nvim-lspconfig' -- LSP

  -- Autocompletion
  -- Sources for nvim-cmp to use
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  -- Snippet expansion
  use 'L3MON4D3/LuaSnip' -- snippet engine
  use 'saadparwaiz1/cmp_luasnip' -- use luasnip as a source
  -- The actual completion engine
  use 'hrsh7th/nvim-cmp'
  -- vscode-like pictograms
  use 'onsails/lspkind-nvim'

  -- lspsaga useful LSP UI plugin for hover, peek, find, etc..
  use 'glepnir/lspsaga.nvim'

  -- treesitter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }
  -- null-ls
  -- Use Neovim as a language server
  use 'jose-elias-alvarez/null-ls.nvim'
  -- prettier code formatter
  use 'MunifTanjim/prettier.nvim'

  -- autotags and autopairs
  use 'windwp/nvim-autopairs'
  use 'windwp/nvim-ts-autotag'

  -- telescope
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-file-browser.nvim'
  use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
end)


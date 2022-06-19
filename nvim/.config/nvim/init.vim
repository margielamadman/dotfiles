inoremap jj <Esc>
syntax enable
set number
set relativenumber
set scrolloff=8
set ruler
set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab
set smartindent
set clipboard^=unnamed,unnamedplus
set backspace=indent,eol,start

" plugins
call plug#begin('~/.vim/plugged')
" LSP
Plug 'neovim/nvim-lspconfig'
" Autocompletion
" Sources for nvim-cmp to use
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
" Snippet expansion
Plug 'L3MON4D3/LuaSnip' " snippet engine
Plug 'saadparwaiz1/cmp_luasnip' " use luasnip as a source
" The actual nvim-cmp engine
Plug 'hrsh7th/nvim-cmp'

" Symantic Highlighting but requires ccls
" Plug 'jackguo380/vim-lsp-cxx-highlight'

" Tree-sitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
" Colorscheme
Plug 'kaicataldo/material.vim', { 'branch': 'main' }
" Markdown Preview
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
" Telescope
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
call plug#end()

" external config files (in lua dir)
" https://github.com/nanotee/nvim-lua-guide for more
lua require("lsp_config")
lua require("telescope_config")

" colorscheme
if (has('termguicolors'))
  set termguicolors
endif
let g:material_theme_style = 'darker'
colorscheme material

" Key Mappings
" setting the leader key
let mapleader = " "
" open file tree
nnoremap <leader>e :Ex<CR>
nnoremap <leader>pv :Vex<CR>
nnoremap <leader>ph :Sex<CR>
" source this file
nnoremap <leader><CR> :so ~/.config/nvim/init.vim<CR>
" use Telescope to fuzzy find
nnoremap <leader>ff <cmd>lua require("telescope.builtin").find_files()<CR>
nnoremap <leader>gf <cmd>lua require("telescope.builtin").git_files()<CR>
nnoremap <leader>fb <cmd>lua require("telescope_config").curr_buf_fzf()<CR>
nnoremap <leader>fg <cmd>lua require("telescope.builtin").live_grep()<CR>
nnoremap <leader>fs <cmd>lua require("telescope.builtin").grep_string()<CR>
nnoremap <leader>le <cmd>lua require("telescope.builtin").diagnostics()<CR>
" LSP mappings
" switch between source and header in c/cpp files
nnoremap <leader>s :ClangdSwitchSourceHeader<CR>

" remapping quickfix nav
nnoremap <C-j> :cnext<CR>
nnoremap <C-k> :cprev<CR>


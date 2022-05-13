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

" mac specific stuf
set clipboard+=unnamedplus
set backspace=indent,eol,start

" plugins
call plug#begin('~/.vim/plugged')
" LSP
Plug 'neovim/nvim-lspconfig'
" Symantic Highlighting but requires ccls
" Plug 'jackguo380/vim-lsp-cxx-highlight'
" Autocompletion
" Plug 'hrsh7th/nvim-cmp'
" Tree-sitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'kaicataldo/material.vim', { 'branch': 'main' }
Plug 'chaiscript/vim-chaiscript'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
call plug#end()

" external config files (in lua)
luafile ~/.config/nvim/lsp.lua

" colorscheme
if (has('termguicolors'))
  set termguicolors
endif
let g:material_theme_style = 'darker'
colorscheme material

" setting the leader key
let mapleader = " "
" keymap to open file tree
nnoremap <leader>pv :Vex<CR>
" source this file
nnoremap <leader><CR> :so ~/.config/nvim/init.vim<CR>

" use fzf to find files
nnoremap <C-p> :GFiles<CR>
nnoremap <leader>pf :Files<CR>

" remapping quickfix nav
nnoremap <C-j> :cnext<CR>
nnoremap <C-k> :cprev<CR>

" bind ctrl-a for fzf select-all
let $FZF_DEFAULT_OPTS = '--bind ctrl-a:select-all,ctrl-d:deselect-all'


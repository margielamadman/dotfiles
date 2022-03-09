inoremap jj <Esc>
syntax enable
set number
set relativenumber
set scrolloff=8
set ruler
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent

" mac specific stuf
set clipboard+=unnamedplus
set backspace=indent,eol,start

" plugins
call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'kaicataldo/material.vim', { 'branch': 'main' }
call plug#end()

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


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

" plugins
call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
call plug#end()

" setting the leader key
let mapleader = " "
" keymap to open file tree
nnoremap <leader>pv :Vex<CR>
nnoremap <leader><CR> :so ~/.config/nvim/init.vim<CR>
" use fzf to find files
nnoremap <C-p> :GFiles<CR>
nnoremap <leader>pf :Files<CR>



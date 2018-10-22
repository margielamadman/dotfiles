syntax enable
set number relativenumber
set ruler
colo desert
inoremap jj <Esc>
set shiftwidth=4
set tabstop=4
set expandtab

"Type F5 to clear all trailing whitespace and tabs
nnoremap <silent> <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>:retab<CR>

"Splits
set splitbelow
set splitright

"Navigate splits
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l


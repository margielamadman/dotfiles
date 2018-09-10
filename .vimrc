syntax enable
set number
inoremap jj <Esc>

"Type F5 to clear all trailing whitespace and tabs
nnoremap <silent> <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>:retab<CR>

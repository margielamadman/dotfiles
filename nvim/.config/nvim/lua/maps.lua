local keymap = vim.keymap

-- leader key
vim.g.mapleader = " "

local noremap = { noremap = true }
-- Remap escape
keymap.set('i', 'jj', '<Esc>', noremap)
-- Open file tree
-- keymap.set('n', '<leader>e', ':Ex<CR>')
keymap.set('n', '<leader>ps', ':Sex<CR>')
keymap.set('n', '<leader>pv', ':Vex<CR>')
-- Create splits
keymap.set('n', '<leader>ss', ':split<CR><C-w>w')
keymap.set('n', '<leader>sv', ':vsplit<CR><C-w>w')
-- Move around splits
keymap.set('n', '<leader>hh', '<C-w>h')
keymap.set('n', '<leader>jj', '<C-w>j')
keymap.set('n', '<leader>kk', '<C-w>k')
keymap.set('n', '<leader>ll', '<C-w>l')
-- Resize splits
keymap.set('n', '<C-w><left>', '<C-w><')
keymap.set('n', '<C-w><right>', '<C-w>>')
keymap.set('n', '<C-w><up>', '<C-w>+')
keymap.set('n', '<C-w><down>', '<C-w>-')
-- Quickfix nav
keymap.set('n', '<C-j>', ':cnext<CR>')
keymap.set('n', '<C-k>', ':cprev<CR>')

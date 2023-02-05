local keymap = vim.keymap

-- leader key
vim.g.mapleader = " "

local noremap = { noremap = true }
-- Remap escape
keymap.set('i', 'jj', '<Esc>', noremap)
-- Open file tree
keymap.set('n', '<leader>ps', ':Sex<CR>', noremap)
keymap.set('n', '<leader>pv', ':Vex<CR>', noremap)
-- Create splits
keymap.set('n', '<leader>ss', ':split<CR><C-w>w', noremap)
keymap.set('n', '<leader>sv', ':vsplit<CR><C-w>w', noremap)
-- Move around splits
keymap.set('n', '<leader>hh', '<C-w>h', noremap)
keymap.set('n', '<leader>jj', '<C-w>j', noremap)
keymap.set('n', '<leader>kk', '<C-w>k', noremap)
keymap.set('n', '<leader>ll', '<C-w>l', noremap)
-- Resize splits
keymap.set('n', '<C-w><left>', '<C-w><', noremap)
keymap.set('n', '<C-w><right>', '<C-w>>', noremap)
keymap.set('n', '<C-w><up>', '<C-w>+', noremap)
keymap.set('n', '<C-w><down>', '<C-w>-', noremap)
-- Quickfix nav
keymap.set('n', '<C-j>', ':cnext<CR>', noremap)
keymap.set('n', '<C-k>', ':cprev<CR>', noremap)

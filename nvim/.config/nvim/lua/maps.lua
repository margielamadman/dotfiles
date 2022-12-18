local keymap = vim.keymap

-- leader key
vim.g.mapleader = " "

-- Remap escape
keymap.set('i', 'jj', '<Esc>')
-- Open file tree
keymap.set('n', '<leader>e', ':Ex<CR>')
keymap.set('n', '<leader>ps', ':Sex<CR>')
keymap.set('n', '<leader>pv', ':Vex<CR>')
-- Create splits
keymap.set('n', '<leader>ss', ':split<CR><C-w>w')
keymap.set('n', '<leader>sv', ':vsplit<CR><C-w>w')
-- Move around splits
keymap.set('', '<leader>sh', '<C-w>h')
keymap.set('', '<leader>sj', '<C-w>j')
keymap.set('', '<leader>sk', '<C-w>k')
keymap.set('', '<leader>sl', '<C-w>l')
-- Resize splits
keymap.set('n', '<C-w><left>', '<C-w><')
keymap.set('n', '<C-w><right>', '<C-w>>')
keymap.set('n', '<C-w><up>', '<C-w>+')
keymap.set('n', '<C-w><down>', '<C-w>-')
-- Quickfix nav
keymap.set('n', '<C-j>', ':cnext<CR>')
keymap.set('n', '<C-k>', ':cprev<CR>')
-- use Telescope to fuzzy find
local builtin = require('telescope.builtin')
keymap.set('n', '<leader>ff', builtin.find_files, {})
keymap.set('n', '<leader>gf', builtin.git_files, {})
keymap.set('n', '<leader>fb', builtin.current_buffer_fuzzy_find, {})
keymap.set('n', '<leader>fg', builtin.live_grep, {})
keymap.set('n', '<leader>fs', builtin.grep_string, {})
keymap.set('n', '<leader>le', builtin.diagnostics, {})


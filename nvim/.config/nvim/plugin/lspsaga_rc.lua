local status, saga = pcall(require, 'lspsaga')
if (not status) then return end

saga.init_lsp_saga()

local opts = { noremap = true, silent = true }
-- Show all definitions, implementations, and references
vim.keymap.set('n', 'gd', '<cmd>Lspsaga lsp_finder<CR>', opts)
-- Peek definition
vim.keymap.set('n', '<leader>pd', '<cmd>Lspsaga peek_definition<CR>', opts)
-- Code actions
vim.keymap.set('n', '<leader>ca', '<cmd>Lspsaga code_action<CR>', opts)
-- Diagnostics
vim.keymap.set('n', '<leader>er', '<cmd>Lspsaga show_line_diagnostics<CR>', opts)
vim.keymap.set('n', '<leader>dj', '<cmd>Lspsaga diagnostic_jump_next<CR>', opts)
vim.keymap.set('n', '<leader>dk', '<cmd>Lspsaga diagnostic_jump_prev<CR>', opts)

local status, telescope = pcall(require, 'telescope')
if (not status) then return end

-- Telescope Setup
telescope.setup {
  extensions = {
    file_browser = {
      theme = 'ivy',
      -- disables netrw and use telescope-file-browser
      hijack_netrw = true,
    }
  }
}
-- To get fzf loaded and working with telescope, you need to call
-- load_extension, somewhere after setup function:
telescope.load_extension('fzf')
-- Loading file browser extension
telescope.load_extension('file_browser')
-- Example of how to pass opts if needed to builtin functions
local mappings = {}
mappings.curr_buf_fzf = function()
  require('telescope.builtin').current_buffer_fuzzy_find()
end
mappings.fb = function ()
  telescope.extensions.file_browser.file_browser({ path='%:p:h' })
end

-- Telescope mappings
local keymap = vim.keymap
keymap.set('n', '<leader>fb', mappings.curr_buf_fzf, {})
keymap.set('n', '<C-b>', mappings.fb, {})
local builtin = require('telescope.builtin')
keymap.set('n', '<leader>ff', builtin.find_files, {})
keymap.set('n', '<leader>gf', builtin.git_files, {})
keymap.set('n', '<leader>fg', builtin.live_grep, {})
keymap.set('n', '<leader>fs', builtin.grep_string, {})
keymap.set('n', '<leader>le', builtin.diagnostics, {})

-- TODO: remove this or figure out how to get it to maps.lua
return mappings

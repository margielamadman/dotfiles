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

return mappings

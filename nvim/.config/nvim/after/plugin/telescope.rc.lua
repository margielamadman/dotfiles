local status, telescope = pcall(require, 'telescope')
if (not status) then return end

-- Telescope Setup
telescope.setup {}
-- To get fzf loaded and working with telescope, you need to call
-- load_extension, somewhere after setup function:
require('telescope').load_extension('fzf')
-- Example of how to pass opts if needed to builtin functions
local mappings = {}
mappings.curr_buf_fzf = function()
  require('telescope.builtin').current_buffer_fuzzy_find()
end

return mappings

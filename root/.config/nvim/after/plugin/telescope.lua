require('telescope').setup({
  defaults = {
    prompt_prefix = '🔍 ',
    wrap_results = true,
    layout_config = {
      horizontal = {
        height = 0.99,
        width = 0.99,
      }
    },
    mappings = {
      i = {
        ["<C-Down>"] = require('telescope.actions').cycle_history_next,
        ["<C-Up>"] = require('telescope.actions').cycle_history_prev,
      },
    },
  }
})
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<leader>pg', builtin.git_files, {})
vim.keymap.set('n', '<leader>pr', builtin.grep_string, {})
vim.keymap.set('n', '<leader>pl', builtin.live_grep, {})
vim.keymap.set('n', '<leader>ps', function()
  builtin.grep_string({ search = vim.fn.input('Grep > ') });
end)


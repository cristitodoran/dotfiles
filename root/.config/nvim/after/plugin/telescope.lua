-- Clone the default Telescope configuration
local telescopeConfig = require("telescope.config")
local vimgrep_arguments = { unpack(telescopeConfig.values.vimgrep_arguments) }

-- I want to search in hidden/dot files.
table.insert(vimgrep_arguments, "--hidden")
-- I don't want to search in the `.git` directory.
table.insert(vimgrep_arguments, "--glob")
table.insert(vimgrep_arguments, "!**/.git/*")


require('telescope').setup({
  defaults = {
    vimgrep_arguments = vimgrep_arguments,
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
  },
  pickers = {
		find_files = {
			-- `hidden = true` will still show the inside of `.git/` as it's not `.gitignore`d.
			find_command = { "rg", "--files", "--hidden", "--glob", "!**/.git/*"},
		},
	},
})
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('v', '<leader>pg', 'y<ESC>:Telescope grep_string default_text=<c-r>0<CR>', {})
vim.keymap.set('n', '<leader>pg', builtin.grep_string, {})
vim.keymap.set('v', '<leader>pl', 'y<ESC>:Telescope live_grep default_text=<c-r>0<CR>', {})
vim.keymap.set('n', '<leader>pl', builtin.live_grep, {})
vim.keymap.set('n', '<leader>pt', builtin.treesitter, {})
vim.keymap.set('n', '<leader>pc', builtin.git_status, {})



local Terminal  = require('toggleterm.terminal').Terminal

function _tig_toggle()
  local tig = Terminal:new({
    cmd = "tig --oneline --follow -p -- " .. vim.fn.expand('%:p'),
    hidden = true,
    direction = "float",
    float_opts = {
      border = "curved",
      width = 100000,
      height = 100000,
    },
  })
  tig:toggle()
end

vim.api.nvim_set_keymap("n", "<leader>hh", "<cmd>lua _tig_toggle()<CR>", {noremap = true, silent = true})

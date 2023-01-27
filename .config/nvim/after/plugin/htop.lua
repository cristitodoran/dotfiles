local Terminal  = require('toggleterm.terminal').Terminal
local htop = Terminal:new({
  cmd = "htop",
  hidden = true,
  direction = "float",
})

function _htop_toggle()
  htop:toggle()
end

vim.api.nvim_set_keymap("n", "<leader>h", "<cmd>lua _htop_toggle()<CR>", {noremap = true, silent = true})

vim.g.mapleader = " "

-- move lines
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- paste and don't replace clipboard content
vim.keymap.set("x", "<leader>p", [["_dP]])

-- yank to global clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- This is going to get me cancelled
vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
-- format file
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- search current word
vim.keymap.set("n", "<leader>w", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Bufferline
-- Move to previous/next
vim.keymap.set('n', '<A-,>', '<Cmd>BufferLineCyclePrev<CR>')
vim.keymap.set('n', '<A-.>', '<Cmd>BufferLineCycleNext<CR>')
-- Re-order to previous/next
vim.keymap.set('n', '<A-<>', '<Cmd>BufferLineMovePrev<CR>')
vim.keymap.set('n', '<A->>', '<Cmd>BufferLineMoveNext<CR>')
-- Goto buffer in position...
vim.keymap.set('n', '<A-1>', '<Cmd>BufferLineGoToBuffer 1<CR>')
vim.keymap.set('n', '<A-2>', '<Cmd>BufferLineGoToBuffer 2<CR>')
vim.keymap.set('n', '<A-3>', '<Cmd>BufferLineGoToBuffer 3<CR>')
vim.keymap.set('n', '<A-4>', '<Cmd>BufferLineGoToBuffer 4<CR>')
vim.keymap.set('n', '<A-5>', '<Cmd>BufferLineGoToBuffer 5<CR>')
vim.keymap.set('n', '<A-6>', '<Cmd>BufferLineGoToBuffer 6<CR>')
vim.keymap.set('n', '<A-7>', '<Cmd>BufferLineGoToBuffer 7<CR>')
vim.keymap.set('n', '<A-8>', '<Cmd>BufferLineGoToBuffer 8<CR>')
vim.keymap.set('n', '<A-9>', '<Cmd>BufferLineGoToBuffer 9<CR>')
vim.keymap.set('n', '<A-0>', '<Cmd>BufferLineGoToBuffer -1<CR>')
-- Pin/unpin buffer
vim.keymap.set('n', '<A-p>', '<Cmd>BufferLineTogglePin<CR>')
-- Close buffer
vim.keymap.set('n', '<A-c>', '<Cmd>bd<CR>')
-- Close commands
vim.keymap.set('n', '<leader>cal', '<Cmd>BufferLineCloseLeft<CR>')
vim.keymap.set('n', '<leader>car', '<Cmd>BufferLineCloseRight<CR>')
-- Magic buffer-picking mode
vim.keymap.set('n', '<C-p>', '<Cmd>BufferLinePick<CR>')
-- Sort automatically by...
vim.keymap.set('n', '<leader>bt', '<Cmd>BufferLineSortByTabs<CR>')
vim.keymap.set('n', '<leader>bd', '<Cmd>BufferLineSortByDirectory<CR>')
vim.keymap.set('n', '<leader>be', '<Cmd>BufferLineSortByExtension<CR>')

-- nvim-tree
vim.keymap.set('n', '<leader>tt', '<Cmd>NvimTreeToggle<CR>')
vim.keymap.set("n", "<leader>mn", require("nvim-tree.api").marks.navigate.next)
vim.keymap.set("n", "<leader>mp", require("nvim-tree.api").marks.navigate.prev)
vim.keymap.set("n", "<leader>ms", require("nvim-tree.api").marks.navigate.select)

-- auto-session
vim.keymap.set('n', '<leader>ss', '<Cmd>SaveSession<CR>')
--vim.keymap.set('n', '<leader>sr', '<Cmd>NvimTreeClose<CR><Cmd>RestoreSession<CR><Cmd>NvimTreeFocus<CR>')
vim.keymap.set('n', '<leader>sr', '<Cmd>RestoreSession<CR>')

-- clipboard manager
vim.keymap.set('n', '<leader>sc', function() require('telescope').extensions.neoclip.default() end) 
vim.keymap.set('n', '<leader>sm', function() require('telescope').extensions.macroscope.default() end) 

-- debugger
vim.keymap.set('n', '<leader>db', function() require('dap').toggle_breakpoint()  end)
vim.keymap.set('n', '<leader>dc', function() require('dap').continue() end)
vim.keymap.set('n', '<leader>do', function() require('dap').step_over() end)
vim.keymap.set('n', '<leader>di', function() require('dap').step_into() end)
vim.keymap.set('n', '<leader>dro', function() require('dap').repl.open() end)
vim.keymap.set('n', '<leader>drc', function() require('dap').repl.close() end)

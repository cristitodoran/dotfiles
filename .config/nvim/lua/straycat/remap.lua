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

-- barbar.vim - Tabs
-- Move to previous/next
vim.keymap.set('n', '<A-,>', '<Cmd>BufferPrevious<CR>')
vim.keymap.set('n', '<A-.>', '<Cmd>BufferNext<CR>')
-- Re-order to previous/next
vim.keymap.set('n', '<A-<>', '<Cmd>BufferMovePrevious<CR>')
vim.keymap.set('n', '<A->>', '<Cmd>BufferMoveNext<CR>')
-- Goto buffer in position...
vim.keymap.set('n', '<A-1>', '<Cmd>BufferGoto 1<CR>')
vim.keymap.set('n', '<A-2>', '<Cmd>BufferGoto 2<CR>')
vim.keymap.set('n', '<A-3>', '<Cmd>BufferGoto 3<CR>')
vim.keymap.set('n', '<A-4>', '<Cmd>BufferGoto 4<CR>')
vim.keymap.set('n', '<A-5>', '<Cmd>BufferGoto 5<CR>')
vim.keymap.set('n', '<A-6>', '<Cmd>BufferGoto 6<CR>')
vim.keymap.set('n', '<A-7>', '<Cmd>BufferGoto 7<CR>')
vim.keymap.set('n', '<A-8>', '<Cmd>BufferGoto 8<CR>')
vim.keymap.set('n', '<A-9>', '<Cmd>BufferGoto 9<CR>')
vim.keymap.set('n', '<A-0>', '<Cmd>BufferLast<CR>')
-- Pin/unpin buffer
vim.keymap.set('n', '<A-p>', '<Cmd>BufferPin<CR>')
-- Close buffer
vim.keymap.set('n', '<A-c>', '<Cmd>BufferClose<CR>')
-- Wipeout buffer
--                 :BufferWipeout
-- Close commands
vim.keymap.set('n', '<leader>cab', '<Cmd>BufferCloseAllButCurrentOrPinned<CR>')
vim.keymap.set('n', '<leader>cal', '<Cmd>BufferCloseBuffersLeft<CR>')
vim.keymap.set('n', '<leader>car', '<Cmd>BufferCloseBuffersRight<CR>')
--                 :BufferCloseAllButCurrent
--                 :BufferCloseAllButPinned
--                 :BufferCloseAllButCurrentOrPinned
--                 :BufferCloseBuffersLeft
--                 :BufferCloseBuffersRight
-- Magic buffer-picking mode
vim.keymap.set('n', '<C-p>', '<Cmd>BufferPick<CR>')
-- Sort automatically by...
--vim.keymap.set('n', '<Space>bb', '<Cmd>BufferOrderByBufferNumber<CR>')
--vim.keymap.set('n', '<Space>bd', '<Cmd>BufferOrderByDirectory<CR>')
--vim.keymap.set('n', '<Space>bl', '<Cmd>BufferOrderByLanguage<CR>')
--vim.keymap.set('n', '<Space>bw', '<Cmd>BufferOrderByWindowNumber<CR>')

-- nvim-tree
vim.keymap.set('n', '<leader>tt', '<Cmd>NvimTreeToggle<CR>')
vim.keymap.set("n", "<leader>mn", require("nvim-tree.api").marks.navigate.next)
vim.keymap.set("n", "<leader>mp", require("nvim-tree.api").marks.navigate.prev)
vim.keymap.set("n", "<leader>ms", require("nvim-tree.api").marks.navigate.select)

-- auto-session
vim.keymap.set('n', '<leader>ss', '<Cmd>SaveSession<CR>')
vim.keymap.set('n', '<leader>sr', '<Cmd>NvimTreeClose<CR><Cmd>RestoreSession<CR><Cmd>NvimTreeFocus<CR>')

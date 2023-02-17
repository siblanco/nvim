local keymap = vim.keymap.set

keymap("", "<Space>", "<Nop>")
vim.g.mapleader = " "

keymap('n', 'x', '"_x')

-- Increment/decrement
keymap('n', '+', '<C-a>')
keymap('n', '-', '<C-x>')

-- Select all
keymap('n', '<C-a>', 'gg<S-v>G')

-- center screen after jumps
-- keymap('n', '<C-d>', '<C-d>zz')
-- keymap('n', '<C-u>', '<C-u>zz')
-- keymap('v', '<C-d>', '<C-d>zz')
-- keymap('v', '<C-u>', '<C-u>zz')
-- keymap('n', '<C-o>', '<C-o>zz')
-- keymap('n', '<C-i>', '<C-i>zz')
-- keymap('v', '<C-o>', '<C-o>zz')
-- keymap('v', '<C-i>', '<C-i>zz')
-- keymap('n', 'n', 'nzz')
-- keymap('n', 'N', 'Nzz')
-- keymap('v', 'n', 'nzz')
-- keymap('v', 'N', 'Nzz')

-- stay at end after yank
keymap('v', 'y', 'ygv<Esc>')

-- close buffer
keymap('n', 'tc', '<cmd>Bdelete!<CR>')
keymap('n', '<leader>c', '<cmd>bufdo bd<CR>')
keymap('n', 'ti', ':bnext<CR>')
keymap('n', 'tm', ':bprevious<CR>')

-- quicklist
keymap('n', '<leader>q', '<cmd>call setqflist([])<CR>')

-- Split window
keymap('n', 'ss', ':split<Return><C-w>w')
keymap('n', 'sv', ':vsplit<Return><C-w>w')

-- undotree
keymap('n', '<leader>u', ':UndotreeToggle<CR><C-w>w')

-- Resize with arrows
keymap("n", "<C-Up>", ":resize +3<CR>")
keymap("n", "<C-Down>", ":resize -1<CR>")
keymap("n", "<C-Left>", ":vertical resize +3<CR>")
keymap("n", "<C-Right>", ":vertical resize -1<CR>")

keymap("t", "<Esc>", "<C-\\><C-n>")

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv")
keymap("v", ">", ">gv")

keymap("v", "p", '"_dP')

keymap('n', '<C-f>', function()
  require('illuminate').goto_next_reference()
end)
keymap('n', '<C-b>', function()
  require('illuminate').goto_prev_reference()
end)

keymap('v', '<C-f>', function()
  require('illuminate').goto_next_reference()
end)
keymap('v', '<C-b>', function()
  require('illuminate').goto_prev_reference()
end)

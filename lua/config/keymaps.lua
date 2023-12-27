local key = vim.keymap
-- Remove highlight after doing search with / or %
key.set('n', '<leader>h', ':nohlsearch<CR>')

-- Copy and paste from clipboard
key.set({'n', 'x'}, 'gy', '"+y')
key.set({'n', 'x'}, 'gp', '"+p')

-- Delete with x will not go to register
key.set({'n', 'x'}, 'x', '"_x')
key.set({'n', 'x'}, 'X', '"_d')

-- Select all
key.set('n', '<leader>A', ':keepjumps normal! ggVG<cr>')

-- Move to window
key.set('n', '<C-h>', '<C-w>h', { desc = 'Go to left window', remap = true })
key.set('n', '<C-j>', '<C-w>j', { desc = 'Go to lower window', remap = true })
key.set('n', '<C-k>', '<C-w>k', { desc = 'Go to upper window', remap = true })
key.set('n', '<C-l>', '<C-w>l', { desc = 'Go to right window', remap = true })

-- Resize Window
key.set('n', 'C-up>', '<cmd>resize +2<CR>', { desc = 'Increase window height' })
key.set('n', 'C-down>', '<cmd>resize -2<CR>', { desc = 'Decrease window height' })
key.set('n', 'C-right>', '<cmd>vertical resize -2<CR>', { desc = 'Increase window width' })
key.set('n', 'C-left>', '<cmd>vertical resize +2<CR>', { desc = 'Decrease window width' })

-- Navigate buffer
key.set('n', '<S-k>', '<cmd>bprevious<CR>', { desc = 'Prev buffer' })
key.set('n', '<S-j>', '<cmd>bnext<CR>', { desc = 'Next buffer' })

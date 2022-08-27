local keymap = vim.keymap

vim.g.mapleader = ','
vim.g.maplocalleader = ','

-- Quick Save
keymap.set('n', '<leader>w', ':w<cr>')

-- Quick Source Current File
keymap.set('n', '<leader>s', ':so %<cr>')

-- Quick Quit
keymap.set('n', '<leader>q', ':q<cr>')

-- New Tab
keymap.set('n', 'nt', ':tabedit<cr>')

-- Change Tab
keymap.set('n', '=', ':tabn<cr>') 
keymap.set('n', '-', ':tabp<cr>')

-- Close Tab
keymap.set('n', 'ct', ':bd<cr>')

-- Select all
keymap.set('n', '<C-a>', 'gg<S-v>G')

-- Maintain the cursor position when yanking a visual selection
-- http://ddrscott.github.io/blog/2016/yank-without-jank/
keymap.set('v', 'y', 'myy`y')
keymap.set('v', 'Y', 'myY`y')

-- Open the current file in the default program 
keymap.set('n', '<leader>x', ':!open %<cr><cr>')

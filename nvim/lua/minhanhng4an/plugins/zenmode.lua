local keymap = vim.keymap

require("zen-mode").setup()

keymap.set('n', '<leader>z', ':ZenMode<cr>')

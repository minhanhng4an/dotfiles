require("nvim-tree").setup()
local keymap = vim.keymap

-- Toggle File Explorer
keymap.set('n', '<leader>f', ':NvimTreeToggle<cr>')


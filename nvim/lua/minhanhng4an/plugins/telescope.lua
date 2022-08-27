local telescope = require('telescope')
local actions = require('telescope.actions')
local keymap = vim.keymap

vim.cmd([[
  highlight link TelescopePromptTitle PMenuSel
  highlight link TelescopePreviewTitle PMenuSel
  highlight link TelescopePromptNormal PMenu
  highlight link TelescopePromptBorder PMenuBg
  highlight link TelescopeNormal CursorLine
  highlight link TelescopeBorder CursorLineBg
]])

telescope.setup({
  defaults = {
    path_display = { truncate = 1 },
    selection_caret = '  ',
    layout_config = {
      prompt_position = 'top',
    },
    sorting_strategy = 'ascending',
    mappings = {
      i = {
        ['<esc>'] = actions.close,
        ['<C-Down>'] = actions.cycle_history_next,
        ['<C-Up>'] = actions.cycle_history_prev,
      },
    },
    file_ignore_patterns = { '.git/' },
  },
  pickers = {
    find_files = {
      hidden = true,
    },
    buffers = {
      previewer = false,
      layout_config = {
        width = 80,
      },
    },
    oldfiles = {
      prompt_title = 'History',
    },
    lsp_references = {
      previewer = false,
    },
  },
})
-- To get fzf loaded and working with telescope,
-- you need to call load_extension, somewhere after
-- the setup function.
telescope.load_extension('fzf')

keymap.set('n', 'ff', ':Telescope find_files<cr>')
keymap.set('n', 'fg', ':Telescope live_grep<cr>')
keymap.set('n', 'fb', ':Telescope buffers<cr>')
keymap.set('n', 'fh', ':Telescope help_tags<cr>')


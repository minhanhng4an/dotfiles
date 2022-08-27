local bufferline = require('bufferline')

bufferline.setup({
    options = {
        separator_style = 'thin',
        numbers = 'none',
        indicator = {
           style = 'none'
        },
        show_tab_indicators = false,
        show_close_icon = false,
    },
    highlights = {
        buffer_selected = {
            fg = '#bd93f9',
            bold = true,
            italic = false
        },
        separator = {
            fg = '#f1fa8c', 
            -- bg = '#f1fa8c'
        },
    }
})

-- vim.keymap.set('n', '<Tab>', '<Cmd>BufferLineCycleNext<CR>', {})
-- vim.keymap.set('n', '<S-Tab>', '<Cmd>BufferLineCyclePrev<CR>', {})

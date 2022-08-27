local treesitter = require('nvim-treesitter.configs')

treesitter.setup {
    autotag = {
        enable = true
    },
    highlight = {
        enable = true
    },
    indent = {
        enable = true
    },
    ensure_installed = {
        'html',
        'css',
        'javascript',
        'tsx',
        'typescript',
        'comment',
        'json',
        'python',
        'markdown',
        'markdown_inline',
        'sql',
        'vim',
        'lua'
    }
}
local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.tsx.filetype_to_parsername = { "javascript", "typescript.tsx" }
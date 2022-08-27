local is_bootstrap = false
local install_path = vim.fn.stdpath('config') .. '/site/pack/packer/start/packer.nvim'
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  is_bootstrap = true
  vim.fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
  vim.cmd [[packadd packer.nvim]]
end

local packer = require('packer')

packer.init({
  display = {
    open_fn = function()
      return require('packer.util').float({ border = 'solid' })
    end,
  },
})

packer.startup(function(use)
    use 'wbthomason/packer.nvim'
   
    -- Color theme
    use {
        'dracula/vim', 
        as = 'dracula',
        config = function()
            require('minhanhng4an.plugins.dracula')
        end
    }

    -- autocompletion
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'L3MON4D3/LuaSnip'
    use 'saadparwaiz1/cmp_luasnip'
    use {
        'onsails/lspkind-nvim',
        config = function()
            require('minhanhng4an.plugins.cmp')
        end
    }

    -- gitsigns
    use {
        'lewis6991/gitsigns.nvim',
        config = function()
           require('minhanhng4an.plugins.gitsigns')
        end
    }

    -- lightline
    -- use 'itchyny/lightline.vim'
    
    -- lspconfig
    use {
        'neovim/nvim-lspconfig',
        config = function()
            require('minhanhng4an.plugins.lsp')
        end
    }

    -- nvim-tree
    use {
        'kyazdani42/nvim-tree.lua',
        requires = {
            'kyazdani42/nvim-web-devicons'
        },
        config = function()
            require('minhanhng4an.plugins.tree')
        end
    }

    -- Telescope requires plenary to function
    use 'nvim-lua/plenary.nvim'
    -- The main Telescope plugin
    use {
        'nvim-telescope/telescope.nvim',
        config = function()
            require('minhanhng4an.plugins.telescope')
        end
    }

    -- An optional plugin recommended by Telescope docs
    use {
        'nvim-telescope/telescope-fzf-native.nvim',
        run = 'make'
    }

    -- Treesitter
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate',
        config = function()
            require('minhanhng4an.plugins.treesitter')
        end
    }

    -- vim-fugitive
    use 'tpope/vim-fugitive'

    -- auto-pairs
    use { 
        'windwp/nvim-autopairs',
        config = function()
            require('nvim-autopairs').setup()
        end
    }
    
    -- autotag
    use 'windwp/nvim-ts-autotag'

    -- nvim-colorizer
    use {
        'norcalli/nvim-colorizer.lua',
        config = function()
            require('colorizer').setup()
        end
    }

    -- lualine
    use {
        'nvim-lualine/lualine.nvim',
        config = function()
            require('minhanhng4an.plugins.lualine')
        end
    }

    -- zen-mode
    use {
        'folke/zen-mode.nvim',
        config = function()
           require("minhanhng4an.plugins.zenmode")
        end 
    }

    use {
        'akinsho/bufferline.nvim',
        config = function()
            require('minhanhng4an.plugins.bufferline')
        end
    }

end)


-- Automatically install plugins on first run
if is_bootstrap then
  require('packer').sync()
end

-- Automatically regenerate compiled loader file on save
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])

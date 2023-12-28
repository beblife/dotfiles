-- Bootstrap Lazy
local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'

if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        'git',
        'clone',
        '--filter=blob:none',
        'https://github.com/folke/lazy.nvim.git',
        '--branch=stable',
        lazypath,
    })
end

vim.opt.rtp:prepend(lazypath)

require('lazy').setup({

    -- Themes
    { import = 'config.plugins.catppuccin' },

    -- Icons
    'nvim-tree/nvim-web-devicons',

    -- Syntax Highlighting
    { import = 'config.plugins.treesitter' },

    -- Language Server Protocol
    { import = 'config.plugins.lspconfig' },

    -- Autocompletions
    {
        'windwp/nvim-autopairs',
        config = true,
    },

    -- Auto Indentation Fixes
    { import = 'config.plugins.vim-pasta' },

    -- Fuzzy Search
    { import = 'config.plugins.telescope' },

    -- File Explorer
    { import = 'config.plugins.file-explorer' },

    -- Status Line
    { import = 'config.plugins.lualine' },

    -- Auto Completion
    { import = 'config.plugins.autocompletion' },

    -- Dashboard
    { import = 'config.plugins.dashboard' },

    -- Git Integration
    { import = 'config.plugins.gitsigns' },

    -- Comments
    { import = 'config.plugins.vim-commentary' },

    -- Test Runner
    { import = 'config.plugins.vim-test' },

    -- Formatting
    { import = 'config.plugins.formatting' },
})

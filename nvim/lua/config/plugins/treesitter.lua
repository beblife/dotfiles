return {
    'nvim-treesitter/nvim-treesitter',

    event = 'VeryLazy',

    build = ':TSUpdate',

    dependencies = {
        'nvim-treesitter/nvim-treesitter-textobjects',
        'nvim-treesitter/nvim-treesitter-context',
    },

    config = function()
        require('nvim-treesitter.configs').setup({
            sync_install = false,

            ignore_install = {},

            modules = {},

            ensure_installed = {
                'bash',
                'comment',
                'css',
                'dockerfile',
                'javascript',
                'json',
                'jsonc',
                'lua',
                'make',
                'markdown',
                'php',
                'phpdoc',
                'regex',
                'sql',
                'vim',
                'vue',
                'yaml',
            },

            auto_install = true,

            highlight = {
                enable = true,
                disable = { 'yaml' }
            },

            indent = {
                enable = true,
            },
        })

        local parserConfigs = require('nvim-treesitter.parsers').get_parser_configs()

        parserConfigs.blade = {
            install_info = {
                url = 'https://github.com/EmranMR/tree-sitter-blade',
                files = { 'src/parser.c' },
                branch = 'main',
            },

            filetype = 'blade'
        }

        vim.filetype.add({
            pattern = {
                ['.*%.blade%.php'] = 'blade',
            },
        })

        require('treesitter-context').setup()
    end,
}

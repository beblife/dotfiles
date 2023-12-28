return {
    'nvim-telescope/telescope.nvim',

    dependencies = {
        'nvim-lua/plenary.nvim',
        { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
    },

    config = function()
        local actions = require('telescope.actions')
        local builtin = require('telescope.builtin')

        require('telescope').setup({
            defaults = {
                path_display = {
                    'smart',
                },

                preview = {
                    timeout = 200,
                },

                sorting_strategy = 'ascending',

                mappings = {
                    i = {
                        ['<esc>'] = actions.close,
                    }
                },

                file_ignore_patterns = {
                    '.git/',
                    'node_modules/',
                    'vendor/',
                    'mackup/'
                },
            },

            pickers = {
                find_files = {
                    hidden = true,

                    theme = 'dropdown',
                },

                lsp_references = {
                    previewer = false,
                },

                lsp_definitions = {
                    previewer = false,
                },
            },
        })


        require('telescope').load_extension('fzf');

        -- Keymaps
        vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
        vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
        vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
        vim.keymap.set('n', '<leader>fd', builtin.lsp_document_symbols, {})
        vim.keymap.set('n', '<leader>fw', builtin.lsp_workspace_symbols, {})
    end,
}

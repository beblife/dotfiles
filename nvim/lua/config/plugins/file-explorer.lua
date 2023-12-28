return {
    'nvim-neo-tree/neo-tree.nvim',

    dependencies = {
        'nvim-lua/plenary.nvim',
        'MunifTanjim/nui.nvim',
    },

    cmd = 'Neotree',

    keys = {
        { '<leader>e', ':Neotree reveal toggle<CR>' }
    },

    opts = {
        window = {
            position = 'right',

            width = 40
        },

        close_if_last_window = true,

        hide_root_node = true,

        group_empty_dirs = false,

        sources = {
            'filesystem',
            'buffers',
            'git_status',
            'document_symbols',
        },

        filesystem = {
            filtered_items = {
                hide_dotfiles = false
            }
        }
    }
}

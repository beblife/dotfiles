return {
    'nvim-lualine/lualine.nvim',

    lazy = false,

    dependencies = {
        'arkav/lualine-lsp-progress',
        'nvim-tree/nvim-web-devicons',
    },

    opts = {

        options = {
            section_separators = '',

            component_separators = '',

            globalstatus = true,

            theme = 'catppuccin-latte'
        },

        sections = {
            lualine_a = {
                'mode',
            },

            lualine_b = {
                'branch',
                {
                    'diff',
                    symbols = { added = ' ', modified = ' ', removed = ' ' },
                },
            },

            lualine_c = {
                {
                    'filetype',

                    icon_only = true
                },
                {
                    'filename',

                    path = 1,
                }
            },

            lualine_x = {
                'lsp_progress',
            },

            lualine_y = {
                { 'diagnostics', sources = { 'nvim_diagnostic' } },
            },

            lualine_z = {
                'searchcount',
                'selectioncount',
                'progress',
            }
        }
    }
}

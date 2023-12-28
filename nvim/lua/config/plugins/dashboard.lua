return {
    'nvimdev/dashboard-nvim',

    event = 'VimEnter',

    config = function()
        require('dashboard').setup({
            theme = 'doom',

            config = {
                header = {},

                center = {
                    { desc = 'Find Files',    key = '<Space> + ff' },
                    { desc = 'File Explorer', key = '<Space> + e' },
                },

                footer = {
                    "",
                    "",
                }
            },
        })
    end,
}

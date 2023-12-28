return {
    'lewis6991/gitsigns.nvim',

    lazy = false,

    config = function()
        require('gitsigns').setup({
            preview_config = {
                border = { '', '', '', ' ' },
            },

            on_attach = function()
                local gitsigns = package.loaded.gitsigns

                -- Keymaps
                vim.keymap.set('n', '<Leader>gd', gitsigns.diffthis)
                vim.keymap.set('n', '<Leader>hs', gitsigns.stage_hunk)
                vim.keymap.set('n', '<Leader>hu', gitsigns.undo_stage_hunk)
                vim.keymap.set('n', '<Leader>hr', gitsigns.reset_hunk)
                vim.keymap.set('n', '<Leader>hp', gitsigns.preview_hunk)

                vim.keymap.set('v', '<Leader>hs',
                    function() gitsigns.stage_hunk({ vim.fn.line('.'), vim.fn.line('v') }) end)
                vim.keymap.set('v', '<Leader>lu',
                    function() gitsigns.undo_stage_hunk({ vim.fn.line('.'), vim.fn.line('v') }) end)
                vim.keymap.set('v', '<Leader>hr',
                    function() gitsigns.reset_hunk({ vim.fn.line('.'), vim.fn.line('v') }) end)
            end,
        })
    end,
}

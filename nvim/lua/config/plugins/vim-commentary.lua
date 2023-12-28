return {
    'tpope/vim-commentary',

    config = function()
        -- Maintain cursor position when commenting
        vim.keymap.set('n', 'gco', 'my<cmd>norm vip<bar>gc<cr>`y')
    end,
}

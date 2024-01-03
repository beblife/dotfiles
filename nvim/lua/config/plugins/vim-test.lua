return {
    'vim-test/vim-test',

    keys = {
        { '<Leader>tn', ':TestNearest<CR>' },
        { '<Leader>tf', ':TestFile<CR>' },
        { '<Leader>ts', ':TestSuite<CR>' },
        { '<Leader>tl', ':TestLast<CR>' },
        { '<Leader>tv', ':TestVisit<CR>' },
    },

    config = function()
        vim.cmd([[
            let g:test#strategy = 'neovim_sticky'
            let g:test#neovim_sticky#kill_previous = 1
            let g:test#echo_command = 0
            let g:test#preserve_screen = 0
            let g:test#neovim_sticky#reopen_window = 1
            let g:test#javascript#jest#executable = 'node --experimental-vm-modules node_modules/jest/bin/jest.js'
        ]])
    end,
}

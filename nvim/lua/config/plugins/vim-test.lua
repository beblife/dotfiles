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
            let g:test#strategy = 'neovim'
            let g:test#javascript#jest#executable = 'node --experimental-vm-modules node_modules/jest/bin/jest.js'
        ]])
    end,
}

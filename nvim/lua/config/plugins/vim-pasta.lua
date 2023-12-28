return {
    'sickill/vim-pasta',
    config = function()
        vim.g.pasta_disabled_filytypes = { 'fugitive' }
    end,
}

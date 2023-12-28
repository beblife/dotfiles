return {
    "catppuccin/nvim",

    name = "catppuccin",

    priority = 1000,

    config = function()
        require('catppuccin').setup({
            integrations = {
                cmp = true,
                treesitter = true,
                neotree = true,
                mason = true,
            }
        })

        -- Set Theme
        vim.cmd.colorscheme "catppuccin-latte"
    end,
}

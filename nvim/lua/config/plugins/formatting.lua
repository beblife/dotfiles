return {
    'stevearc/conform.nvim',

    dependencies = {
        'WhoIsSethDaniel/mason-tool-installer.nvim',
    },

    lazy = true,

    event = { "BufReadPre", "BufNewFile" },

    config = function()
        require('mason-tool-installer').setup({
            ensure_installed = {
                'stylua',    -- Lua formatter

                'pint',      -- PHP formatter

                'rustywind', -- TailwindCSS formatter

                'prettier',  -- JS formatter
            }
        })

        local conform = require('conform')

        local onSaveOptions = {
            lsp_fallback = true,

            async = false,

            timeout_ms = 1000,
        }

        conform.setup({
            format_on_save = onSaveOptions,
        })

        -- Keymaps
        vim.keymap.set({ 'n', 'v' }, '<leader>cs', function() conform.format(onSaveOptions) end)
    end,
}

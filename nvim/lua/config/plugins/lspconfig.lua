return {
    'neovim/nvim-lspconfig',

    event = 'VeryLazy',

    dependencies = {
        'williamboman/mason.nvim',
        'williamboman/mason-lspconfig.nvim',
        'hrsh7th/nvim-cmp',
        'hrsh7th/cmp-nvim-lsp',
        'folke/neodev.nvim',
        'b0o/schemastore.nvim',
    },

    config = function()
        require('mason').setup()

        require('mason-lspconfig').setup({
            automatic_installation = true
        })

        require('neodev').setup()

        local capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())

        -- Lua
        require('lspconfig').lua_ls.setup({
            capabilities = capabilities,

            settings = {
                Lua = {
                    diagnostics = { globals = { 'vim' } },

                    completion = { callSnippet = 'Replace' },
                },
            },
        })

        -- PHP
        require('lspconfig').intelephense.setup({
            capabilities = capabilities,

            commands = {
                IntelephenseIndex = {
                    function()
                        vim.lsp.buf.execute_command({ command = 'intelephense.index.workspace' })
                    end,
                },
            },
        })

        -- Vue, JavaScript, TypeScript
        require('lspconfig').volar.setup({
            capabilities = capabilities,

            filetypes = {
                'typescript',
                'javascript',
                'vue',
            },
        })

        -- Tailwind CSS
        require('lspconfig').tailwindcss.setup({ capabilities = capabilities })

        -- JSON
        require('lspconfig').jsonls.setup({
            capabilities = capabilities,
            settings = {

                json = {
                    schemas = require('schemastore').json.schemas(),

                    validate = { enable = true },
                }
            }
        })

        -- YAML
        require('lspconfig').yamlls.setup({
            capabilities = capabilities,

            settings = {
                yaml = {
                    schemaStore = { enable = false, url = '' },

                    schemas = require('schemastore').yaml.schemas(),
                },
            },
        })

        -- Diagnostics
        vim.fn.sign_define('DiagnosticSignError', { text = '', texthl = 'DiagnosticSignError' })
        vim.fn.sign_define('DiagnosticSignWarn', { text = '', texthl = 'DiagnosticSignWarn' })
        vim.fn.sign_define('DiagnosticSignInfo', { text = '', texthl = 'DiagnosticSignInfo' })
        vim.fn.sign_define('DiagnosticSignHint', { text = '', texthl = 'DiagnosticSignHint' })
        vim.diagnostic.config({
            virtual_text = false,

            float = {
                source = true,
            },
        })

        -- Keymaps
        vim.keymap.set('n', '<Leader>d', '<cmd>lua vim.diagnostic.open_float()<CR>')
        vim.keymap.set('n', '<Leader>dp', '<cmd>lua vim.diagnostic.goto_prev()<CR>')
        vim.keymap.set('n', '<Leader>dn', '<cmd>lua vim.diagnostic.goto_next()<CR>')
        vim.keymap.set('n', 'gd', ':Telescope lsp_definitions<CR>')
        vim.keymap.set('n', 'ga', '<cmd>lua vim.lsp.buf.code_action()<CR>')
        vim.keymap.set('n', 'gi', ':Telescope lsp_implementations<CR>')
        vim.keymap.set('n', 'gr', ':Telescope lsp_references<CR>')
        vim.keymap.set('n', 'gv', '<cmd>lua vim.lsp.buf.hover()<CR>')
        vim.keymap.set('n', '<Leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>')
        vim.keymap.set('n', '<Leader>lr', ':LspRestart<CR>')
    end,
}

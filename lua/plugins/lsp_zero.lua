return {
    {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        lazy = true,
        config = false,
        init = function()
            -- Disable automatic setup, we are doing it manually
            vim.g.lsp_zero_extend_cmp = 0
            vim.g.lsp_zero_extend_lspconfig = 0
        end,
    },
    {
        'williamboman/mason.nvim',
        lazy = false,
        config = true,
    },

    -- Autocompletion
    {
        'hrsh7th/nvim-cmp',
        event = 'InsertEnter',
        dependencies = {
            { 'L3MON4D3/LuaSnip' },
        },
        config = function()
            -- Here is where you configure the autocompletion settings.
            local lsp_zero = require('lsp-zero')
            lsp_zero.extend_cmp()

            -- And you can configure cmp even more, if you want to.
            local cmp = require('cmp')
            local cmp_action = lsp_zero.cmp_action()

            cmp.setup({
                formatting = lsp_zero.cmp_format(),
                mapping = cmp.mapping.preset.insert({
                    ["<Tab>"] = cmp.mapping.confirm({ select = false }),
                    ["<C-Space>"] = cmp.mapping.complete(),
                    ["<C-f>"] = cmp_action.luasnip_jump_forward(),
                    ["<C-b>"] = cmp_action.luasnip_jump_backward(),
                    ["<C-u>"] = cmp.mapping.scroll_docs(-4),
                    ["<C-d>"] = cmp.mapping.scroll_docs(4),
                })
            })
        end
    },

    -- LSP
    {
        'neovim/nvim-lspconfig',
        cmd = { 'LspInfo', 'LspInstall', 'LspStart' },
        event = { 'BufReadPre', 'BufNewFile' },
        dependencies = {
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'williamboman/mason-lspconfig.nvim' },
        },
        config = function()
            -- This is where all the LSP shenanigans will live
            local lsp_zero = require('lsp-zero')
            lsp_zero.extend_lspconfig()

            lsp_zero.on_attach(function(client, bufnr)
                -- see :help lsp-zero-keybindings
                -- to learn the available actions
                lsp_zero.default_keymaps({ buffer = bufnr })
                local opts = { buffer = bufnr, remap = false }

                vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
                vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
                vim.keymap.set("n", "Q", function() vim.diagnostic.open_float() end, opts)
                vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
                vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_load() end, opts)
                vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
                vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
                vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
                vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
                vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
                vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
                vim.keymap.set('n', '<leader>f', function() vim.lsp.buf.format() end, opts)
            end)

            require('mason-lspconfig').setup({
                ensure_installed = {},
                handlers = {
                    lsp_zero.default_setup,
                    lua_ls = function()
                        -- (Optional) Configure lua language server for neovim
                        local lua_opts = lsp_zero.nvim_lua_ls()
                        require('lspconfig').lua_ls.setup(lua_opts)
                    end,

                    tsserver = function()
                        require('lspconfig').tsserver.setup({
                            single_file_support = false,
                            settings = {
                                implicitProjectConfiguration = {
                                    checkJs = true
                                }
                            }
                        })
                    end,

                    eslint = function()
                        require('lspconfig').eslint.setup({
                            on_attach = function(client, bufnr)
                                vim.api.nvim_create_autocmd('BufWritePre', {
                                    buffer = bufnr,
                                    command = "EslintFixAll"
                                })
                            end
                        })
                    end,

                    pylsp = function()
                        require('lspconfig').pylsp.setup({
                            on_attach = function(client, bufnr)
                                vim.api.nvim_create_autocmd('BufWritePre', {
                                    buffer = bufnr,
                                    callback = function ()
                                        vim.lsp.buf.format()
                                    end
                                })
                            end
                        })
                    end,

                    powershell_es = function()
                        print("farts")
                        local home_directory = os.getenv('HOME')
                        if home_directory == nil then
                            home_directory = os.getenv('USERPROFILE')
                        end
                        local bundle_path = home_directory .. '/AppData'
                        bundle_path = bundle_path .. '/Local/nvim-data'
                        bundle_path = bundle_path .. '/mason/packages'
                        bundle_path = bundle_path .. '/powershell-editor-services'

                        --local bp = vim.fn.stdpath "data" .. "/mason/packages/powershell-editor-services"

                        require('lspconfig').powershell_es.setup({
                            bundle_path = bundle_path,
                            settings = { powershell = { codeFormatting = { Preset = 'OTBS' } } },
                            on_attach = function(client, bufnr)
                                vim.api.nvim_create_autocmd('BufWritePre', {
                                    buffer = bufnr,
                                    callback = function(ev)
                                        vim.lsp.buf.format()
                                    end
                                })
                            end
                        })
                    end
                }
            })
        end
    }
}

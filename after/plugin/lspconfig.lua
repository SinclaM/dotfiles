local lspconfig = require("lspconfig")
local configs = require('lspconfig.configs')
local lsp_capabilities = require('cmp_nvim_lsp').default_capabilities()

lspconfig.clangd.setup({
    cmd = { "clangd", "-log=verbose", "-header-insertion=never" }
})

lspconfig.lua_ls.setup({
    capabilities = lsp_capabilities,
    settings = {
        Lua = {
            runtime = {
                version = 'LuaJIT'
            },
            diagnostics = {
                globals = {'vim'},
            },
            workspace = {
                library = {
                    vim.env.VIMRUNTIME,
                }
            }
        }
    }
})
lspconfig.rust_analyzer.setup({})

if not configs.shader_language_server then
    configs.shader_language_server = {
        default_config = {
            cmd = { 'shader_language_server' },
            root_dir = lspconfig.util.root_pattern('.git'),
            filetypes = { 'hlsl' },
        },
    }
end
lspconfig.shader_language_server.setup({})

lspconfig.pyright.setup({
    on_attach = on_attach,
    settings = {
        pyright = { autoImportCompletion = true, },
        python = {
            analysis = {
                autoSearchPaths = false,
                diagnosticMode = "openFilesOnly",
                useLibraryCodeForTypes = true,
                typeCheckingMode = "standard"
            }
        }
    }
})

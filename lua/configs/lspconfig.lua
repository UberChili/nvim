-- EXAMPLE 
local on_attach = require("nvchad.configs.lspconfig").on_attach
local on_init = require("nvchad.configs.lspconfig").on_init
local capabilities = require("nvchad.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local util = require "lspconfig/util"
-- local servers = {"clangd", "html", "cssls", "marksman", "pyright"}
local servers = {"clangd", "html", "cssls", "pyright"}

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_init = on_init,
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

-- Marksman
-- lspconfig.marksman.setup {
--   on_init = on_init,
--   on_attach = on_attach,
--   capabilities = capabilities,
--   cmd = {"marksman", "server"},
--   filetypes = {"markdown", "markdown.mdx"},
--   root_dir = util.root_pattern(".git", ".marksman.toml"),
--   single_file_support = false
-- }

-- Separate config for Rust
lspconfig.rust_analyzer.setup({
    on_attach = on_attach,
    capabilities = capabilities,
    filetypes = {"rust"},
    root_dir = util.root_pattern("Cargo.toml"),
    settings = {
        ['rust-analyzer'] = {
            cargo = {
                allFeatures = true,
            },
        },
    },
})

-- Separate config for Go
lspconfig.gopls.setup {
    on_attach = on_attach,
    capabilities = capabilities,
    cmd = {"gopls"},
    filetypes = {"go", "gomod", "gowork", "gotmpl"},
    root_dir = util.root_pattern("go.work", "go.mod", ".git"),
    settings = {
        gopls = {
            completeUnimported = true,
            usePlaceholders = true,
            analyses = {
                unusedparams = true,
            },
            staticcheck = true,
            gofumpt = true,
        },
    },
}

-- Lua
-- lspconfig.lua-lsp-server.setup {
--     on_attach = on_attach,
--     capabilities = capabilities,
--     filetypes = {"lua"},
-- }

-- typescript
-- lspconfig.tsserver.setup {
--   on_attach = on_attach,
--   on_init = on_init,
--   capabilities = capabilities,
-- }
--
-- -- Python (pyright)
-- lspconfig.pyright.setup({
--   on_attach = on_attach,
--   capabilities = capabilities,
--   filetypes = {'python'},
-- })


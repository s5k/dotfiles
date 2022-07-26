local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local servers = {"html", "cssls", "tsserver"}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = function (client, bufnr)
      on_attach(client, bufnr)
      -- disable Lsp formart code to use Null-ls (Formart and diagnosis plugin)
      client.resolved_capabilities.document_formatting = false
    end,
    capabilities = capabilities,
  }
end

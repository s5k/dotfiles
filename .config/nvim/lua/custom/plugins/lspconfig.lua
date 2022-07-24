local M = {}

M.setup_lsp = function (attach, capabilities)
   local lspconfig = require "lspconfig"

   -- lspserver with default config
   local servers = {"html", "cssls", "tsserver", "intelephense"}

   for _, lsp in ipairs(servers) do
      lspconfig[lsp].setup {
         on_attach = function (client, bufnr)
            attach(client, bufnr)
            -- disable Lsp formart code to use Null-ls (Formart and diagnosis plugin)
            client.resolved_capabilities.document_formatting = false
         end,
         capabilities = capabilities,
      }
   end
end

return M

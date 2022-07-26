-- Just an example, supposed to be placed in /lua/custom/

local M = {}

-- make sure you maintain the structure of `core/default_config.lua` here,
-- example of changing theme:

M.ui = {
   theme = "monekai",
}

M.plugins = {
   -- add new plugins
   user = require "custom.plugins",

   -- override core plugins
   override = {
      ["kyazdani42/nvim-tree.lua"] = {
         actions = {
            open_file = {
               resize_window = true,
            }
         }
      },
      ["williamboman/mason.nvim"] = {
        ensure_installed = {
          -- lua stuff
          "lua-language-server",

          -- web dev
          "css-lsp",
          "html-lsp",
          "typescript-language-server",
          "json-lsp",

          -- shell
          "shfmt",
          "shellcheck",
        },
      },
   },
 }

return M

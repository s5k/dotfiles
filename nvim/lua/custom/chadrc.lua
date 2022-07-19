-- Just an example, supposed to be placed in /lua/custom/

local M = {}

-- make sure you maintain the structure of `core/default_config.lua` here,
-- example of changing theme:

M.ui = {
   theme = "monekai",
}

M.plugins = {
   user = require "custom.plugins", -- add new plugins
   override = {
      ["kyazdani42/nvim-tree.lua"] = {
         actions = {
            open_file = {
               resize_window = true,
               quit_on_open = true,
            }
         }
      }
   }, -- override core plugins
   options = {
      lspconfig = {
         setup_lspconf = "custom.plugins.lspconfig"
      }
   },
}

return M

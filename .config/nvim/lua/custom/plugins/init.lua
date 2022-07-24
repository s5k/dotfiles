
return {
   -- Alpha Dashboard
   ["goolord/alpha-nvim"] = {
      disable = false,
   },
   -- Quick move in code, like EasyMotion
   ["ggandor/lightspeed.nvim"] = {
      event = "BufRead" -- lazy load (load when open a file)
   },
   -- Formart and diagnosis code
   ["jose-elias-alvarez/null-ls.nvim"] = {
      after = "nvim-lspconfig", -- lazy load (null-ls load after lspconfig loaded)
      config = function ()
         require "custom.plugins.null-ls"
      end
   }
}


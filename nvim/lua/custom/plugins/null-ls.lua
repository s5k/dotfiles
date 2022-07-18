local present, null_ls = pcall(require, "null-ls")

if not present then
   return
end

local b = null_ls.builtins

local sources = {

   -- webdev stuff
   b.formatting.prettierd,
   -- PHP CodeSniffer formatter
   b.formatting.phpcbf.with({
      extra_args = { "--standard=PSR12" }
   })
}

local on_attach = function ()
    vim.cmd("autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()")
end

null_ls.setup {
   debug = true,
   on_attach = on_attach,
   sources = sources,
}

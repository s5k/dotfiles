local status, sonokai = pcall(require, "sonokai")
if (not sonokai) then return end

vim.cmd [[
  if has('termguicolors')
    set termguicolors
  endif

  " The configuration options should be placed before `colorscheme sonokai`.
  let g:sonokai_style = 'default'
  let g:sonokai_better_performance = 1
  colorscheme sonokai
]]

local map = require('keybindings').map
map("n", "<c-z>", ":NERDTreeToggle<CR>")

vim.g["NERDTreeDirArrowExpandable"] = '▸'
vim.g["NERDTreeDirArrowCollapsible"] = '▾'
vim.g["NERDTreeGitStatusUseNerdFonts"] = '1'

local cmd = vim.cmd

cmd [[
  autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
]]

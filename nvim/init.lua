require("muriilo.core")
require("muriilo.lazy")

-- Removing tilde caracter 
vim.opt.fillchars = { eob = ' ' }
vim.cmd("colorscheme kanagawa")
vim.cmd("autocmd WinEnter,FocusGained * if &buftype != 'terminal' | set norelativenumber | endif")

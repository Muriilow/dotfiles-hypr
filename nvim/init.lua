require("muriilo.core")
require("muriilo.lazy")

-- Tirando o caractere de "~" 
vim.opt.fillchars = { eob = ' ' }

-- Setando cor (não necessário para outros plugins) 
vim.cmd("colorscheme kanagawa")

-- Tirar números na tab do terminal 
vim.cmd("autocmd WinEnter,FocusGained * if &buftype != 'terminal' | set norelativenumber | endif")

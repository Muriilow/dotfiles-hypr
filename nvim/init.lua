require("core")
require("plugins-lazy")

-- Tirando o caractere de "~" 
vim.opt.fillchars = { eob = ' ' }
vim.opt.swapfile = false
-- Setando cor (não necessário para outros plugins) 
vim.cmd("colorscheme vague")

-- Tirar números na tab do terminal 
vim.cmd("autocmd WinEnter,FocusGained * if &buftype != 'terminal' | set norelativenumber | endif")
vim.cmd(":hi statusline guibg=NONE")

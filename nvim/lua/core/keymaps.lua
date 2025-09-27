-- setar a chave principal, como espaço 
vim.g.mapleader = " "

-- espaço + n + h: Limpa as marcações
vim.keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- Deletar uma linha sem copiar o conteúdo em um registrador
vim.keymap.set("n", "x", '"_dd')

-- acrescentar/diminuir um número
vim.keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" }) -- increment
vim.keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" }) -- decrement

-- Gerenciamento de janela 
vim.keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- Divide a janela verticalmente
vim.keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- Divide a janela horizontalmente
vim.keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- Faz as janelas de tamanhos iguais
vim.keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- Fecha a janela atual 

vim.keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- Abre um novo tab
vim.keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- Fecha a tab
vim.keymap.set("n", "<Tab>", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  Vai para o próximo tab
vim.keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) -- Vá para o tab anterior
vim.keymap.set("n", "<leader>df", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move o buffer para um novo tab

vim.keymap.set("v", "<leader>s", [[y:%s/<C-R>"//g<Left><Left>]], {desc = "Find and Replace" }) -- Macro para find and replace 

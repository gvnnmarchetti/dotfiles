vim.g.NERDTreeQuitOnOpen=3

vim.keymap.set('n', '<leader>zz',"<CMD>NERDTree<CR>", {})
vim.keymap.set('n', '<leader>zt',"<CMD>NERDTreeToggle<CR>", {})
vim.keymap.set('n', '<leader>zf',"<CMD>NERDTreeFind<CR>", {})

-- nvim
vim.keymap.set('n', '<leader>zv',"<CMD>NERDTree ~/.config/nvim<CR>", {})

-- Neorg
vim.keymap.set('n', '<leader>zn',"<CMD>NERDTree ~/kDrive/Neorg<CR>", {})

-- Org
vim.keymap.set('n', '<leader>zo',"<CMD>NERDTree ~/kDrive/Org<CR>", {})


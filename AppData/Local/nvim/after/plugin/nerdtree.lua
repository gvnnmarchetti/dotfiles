vim.g.NERDTreeQuitOnOpen=3

vim.keymap.set('n', '<leader>\\n',"<CMD>NERDTree<CR>", {})
vim.keymap.set('n', '<leader>\\t',"<CMD>NERDTreeToggle<CR>", {})
vim.keymap.set('n', '<leader>\\f',"<CMD>NERDTreeFind<CR>", {})

-- nvim
vim.keymap.set('n', '<leader>\\v',"<CMD>NERDTree ~/AppData/Local/nvim<CR>", {})

-- Neorg
vim.keymap.set('n', '<leader>\\n',"<CMD>NERDTree ~/kDrive2/Neorg/notes<CR>", {})

-- Org
vim.keymap.set('n', '<leader>\\o',"<CMD>NERDTree ~/kDrive2/Org<CR>", {})

-- TeleKasten
vim.keymap.set('n', '<leader>\\z',"<CMD>NERDTree ~/kDrive2/Org<CR>", {})


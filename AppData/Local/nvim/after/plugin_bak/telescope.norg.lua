


-- Telescope neorg find_linkable
-- Simply jump to any important element in workspace
vim.keymap.set('n', '<leader>ne', '<CMD>Telescope neorg find_linkable<CR>')


-- Use Telescope neorg insert_file_link to insert a link to a neorg file.
vim.keymap.set('n', '<leader>nf', '<CMD>Telescope neorg insert_file_link<CR>')

-- With Telescope neorg search_headings you can search through all the headings in the current file.
vim.keymap.set('n', '<leader>nh', '<CMD>Telescope neorg search_headings<CR>')

"*******************************************************************************
"* Telescope
"*******************************************************************************

" Removes pipe | that act as separator on split
"set fillchars+=vert:\
" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>ft <cmd>Telescope help_tags<cr>
nnoremap <leader>fh :Telescope harpoon marks<cr>
nnoremap <silent> <leader>fp :Telescope project<CR>

nnoremap <C-s> :Telescope current_buffer_fuzzy_find<cr>
" local nnoremap = Remap.nnoremap
" nnoremap("<leader>ps", function()require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ")})end)

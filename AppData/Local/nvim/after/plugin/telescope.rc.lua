-------------------------------------------------
-- DT'S NEOVIM CONFIGURATION
-- Neovim website: https://neovim.io/
-- DT's dotfiles: https://gitlab.com/dwt1/dotfiles
-------------------------------------------------
--
-- local status, telescope = pcall(require, "telescope")
-- if not status then
--   return
-- end
-- telescope.setup({
--   extensions = {
--     file_browser = {
--       theme = "ivy",
--       -- disables netrw and use telescope-file-browser in its place
--       hijack_netrw = true,
--       mappings = {
--         ["i"] = {
--           -- your custom insert mode mappings
--         },
--         ["n"] = {
--           -- your custom normal mode mappings
--         },
--       },
--     },
--   },
-- })
-- 
-- 
-- telescope.load_extension("file_browser")
-- telescope.load_extension('orgmode')
-- 
-- -- local builtin = require('telescope.builtin')
-- vim.keymap.set('n', "<leader>ff", "<CMD>Telescope find_files<CR>",{})
-- vim.keymap.set('n', "<leader>ft", "<CMD>Telescope git_files<CR>",{})
-- vim.keymap.set('n', '<leader>fb', "<CMD>Telescope file_browser<CR>",{})
-- vim.keymap.set('n', '<leader>fw', "<CMD>Telescope live_grep<CR>",{})
-- vim.keymap.set('n', '<leader>fh', "<CMD>Telescope help_tags<CR>",{})

-- require('telescope').load_extension('harpoon')
require('telescope').load_extension('git_worktree')

-- [[ Configure Telescope ]]
-- See `:help telescope` and `:help telescope.setup()`
require('telescope').setup {
  defaults = {
    layout_strategy = "vertical",
    layout_config = {
      preview_height = 0.7,
      vertical = {
        size = {
          width = "95%",
          height = "95%",
        },
      },
    },
    mappings = {
      i = {
        ['<C-u>'] = false,
        ['<C-d>'] = false,
        ["<C-j>"] = require('telescope.actions').move_selection_next,
        ["<C-k>"] = require('telescope.actions').move_selection_previous,
      },
    },
  },
}

-- Enable telescope fzf native, if installed
pcall(require('telescope').load_extension, 'fzf')

-- See `:help telescope.builtin`
vim.keymap.set('n', '<leader>?', require('telescope.builtin').oldfiles, { desc = '[?] Find recently opened files' })
vim.keymap.set('n', '<leader>/', function()
  -- You can pass additional configuration to telescope to change theme, layout, etc.
  require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
    winblend = 10,
    previewer = false,
  })
end, { desc = '[/] Fuzzily search in current buffer]' })

vim.keymap.set('n', '<leader>sf', require('telescope.builtin').find_files, { desc = '[S]earch [F]iles' })
vim.keymap.set('n', '<leader>sh', require('telescope.builtin').help_tags, { desc = '[S]earch [H]elp' })
vim.keymap.set('n', '<leader>sw', require('telescope.builtin').grep_string, { desc = '[S]earch current [W]ord' })
vim.keymap.set('n', '<leader>sg', require('telescope.builtin').live_grep, { desc = '[S]earch by [G]rep' })
vim.keymap.set('n', '<leader>sd', require('telescope.builtin').diagnostics, { desc = '[S]earch [D]iagnostics' })
vim.keymap.set('n', '<leader>sb', require('telescope.builtin').buffers, { desc = '[ ] Find existing buffers' })
vim.keymap.set('n', '<leader>sS', require('telescope.builtin').git_status, { desc = '' })
vim.keymap.set('n', '<leader>sm', ":Telescope harpoon marks<CR>", { desc = 'Harpoon [M]arks' })
vim.keymap.set("n", "<Leader>sr", "<CMD>lua require('telescope').extensions.git_worktree.git_worktrees()<CR>", silent)
vim.keymap.set("n", "<Leader>sR", "<CMD>lua require('telescope').extensions.git_worktree.create_git_worktree()<CR>", silent)
vim.keymap.set("n", "<Leader>sn", "<CMD>lua require('telescope').extensions.notify.notify()<CR>", silent)



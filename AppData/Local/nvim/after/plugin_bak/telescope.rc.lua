-------------------------------------------------
-- DT'S NEOVIM CONFIGURATION
-- Neovim website: https://neovim.io/
-- DT's dotfiles: https://gitlab.com/dwt1/dotfiles
-------------------------------------------------
--
 local status, telescope = pcall(require, "telescope")
 if not status then
 	return
 end
telescope.setup({
 	extensions = {
 		file_browser = {
 			theme = "ivy",
 			-- disables netrw and use telescope-file-browser in its place
 			hijack_netrw = true,
 			mappings = {
 				["i"] = {
 					-- your custom insert mode mappings
 				},
 				["n"] = {
 					-- your custom normal mode mappings
 	},
 			},
 		},
 	},
 })

 
 telescope.load_extension("file_browser")
 telescope.load_extension('orgmode')

-- local builtin = require('telescope.builtin')
vim.keymap.set('n', "<leader>ff", "<CMD>Telescope find_files<CR>",{})
vim.keymap.set('n', "<leader>ft", "<CMD>Telescope git_files<CR>",{})
vim.keymap.set('n', '<leader>fb', "<CMD>Telescope file_browser<CR>",{})
vim.keymap.set('n', '<leader>fw', "<CMD>Telescope live_grep<CR>",{})
vim.keymap.set('n', '<leader>fh', "<CMD>Telescope help_tags<CR>",{})




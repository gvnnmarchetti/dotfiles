-------------------------------------------------
-- DT'S NEOVIM CONFIGURATION
-- Neovim website: https://neovim.io/
-- DT's dotfiles: https://gitlab.com/dwt1/dotfiles
-------------------------------------------------

local status, which_key = pcall(require, "which-key")
if not status then
	return
end

which_key.setup({
	-- your configuration comes here
	-- or leave it empty to use the default settings
})


which_key.register({
  f = { name = "Telescope",}, -- optional group name },
  n = { name = "Neorg",}, -- optional group name },
  b = { name = " Binary file", },
  o = { name = "Orgmode", },
  s = { name = "Session", },
  z = { name = "NERtree", },
}, { prefix = "<leader>" })


-- ddvim.cmd('autocmd! User GoyoEnter Limelight)')
-- vim.cmd('autocmd! User GoyoLeave Limelight!)')
vim.api.nvim_create_autocmd({"User"}, {
  pattern = "GoyoEnter",
  command = "Limelight",
})
vim.api.nvim_create_autocmd({"User"}, {
  pattern = "GoyoLeave",
  command = "Limelight!",
})


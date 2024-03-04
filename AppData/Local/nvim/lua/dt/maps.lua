-------------------------------------------------
-- DT'S NEOVIM CONFIGURATION
-- Neovim website: https://neovim.io/
-- DT's dotfiles: https://gitlab.com/dwt1/dotfiles
-------------------------------------------------

-------------------------------------------------
-- KEYBINDINGS
-------------------------------------------------

local function map(m, k, v)
	vim.keymap.set(m, k, v, { silent = true })
end

-- Mimic shell movements
map("i", "<C-E>", "<ESC>A")
map("i", "<C-A>", "<ESC>I")

-- Load recent sessions
map("n", "<leader>sl", "<CMD>SessionLoad<CR>")

----------------------------------------------------------
--- Abbreviazione
----------------------------------------------------------
map("c", "W!", "w!")
map("c", "Q!", "q!")
map("c", "Qall!", "qall!")
map("c", "Wq", "wq")
map("c", "Wa", "wa")
map("c", "wQ", "wq")
map("c", "WQ", "wq")
map("c", "W", "w")
map("c", "Q", "q")
map("c", "Qall", "qall")


----------------------------------------------------------
---  Splits
---------------------------------------------------------
-- Split vertically
map("n","vs","<CMD>vs<CR>")
-- Split orriontaly
map("n","sp","<CMDsp<CR>")

-- Remap split navigation to just CTRL + hjkl
map("n","<C-h>","<C-w>h")
map("n","<C-j>","<C-w>j")
map("n","<C-w>","<C-w>w")
map("n","<C-l>","<C-w>l")
map("n","<A-j>","<C-b>")
map("n","<A-k>","<C-d>")
map("n","<A-h>","<C-w>w")

--Change 2 split windows from vert to horizon or horizon to vert
map ("n", "<Leader>th", "<C-w>t<C-w>H")
map ("n", "<Leader>tl", "<C-w>t<C-w>")

-- *******************************************************************************
--* Buffer
-- *******************************************************************************

-- Move one  tab right
map("n", "bk", "<CMD>bnext<CR>")

-- Move one tab left
map("n", "bj", "<CMD>bprev<CR>")

-- Only show current tabpre
map("n", "bo", "<CMD>only<CR>")
-- Close current buffer
map("n", "bw", "<CMD>bw<CR>")
--*****************************************************************************
--* Tabs
--*******************************************************************************

-- Creat new tab
map("n", "tn", "<CMD>tabnew<CR>")

-- Move one  tab right
map("n", "tk", "<CMD>tabnext<CR>")

-- Move one tab left
map("n", "tj", "<CMD>tabprev<CR>")

-- Only show current tabpre
map("n", "to", "<CMD>tabo<CR>")


--******************************************************************************
-- CLEAN SEARCH HIGHLIGHT
--******************************************************************************
map("n", "<silent><leader>h", "<CMD>noh<cr>")

------------------------------------------------------
--- File binari
--------------------------------------------------
-- open file binario
map("n", "<leader>bo", "<CMD>%!xxd<cr>")
-- close file binario
map("n", "<leader>bc", "<CMD>%!xxd -r<CR>")


-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "C:\\Users\\user\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.1703942320\\share\\lua\\5.1\\?.lua;C:\\Users\\user\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.1703942320\\share\\lua\\5.1\\?\\init.lua;C:\\Users\\user\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.1703942320\\lib\\luarocks\\rocks-5.1\\?.lua;C:\\Users\\user\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.1703942320\\lib\\luarocks\\rocks-5.1\\?\\init.lua"
local install_cpath_pattern = "C:\\Users\\user\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.1703942320\\lib\\lua\\5.1\\?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["barbar.nvim"] = {
    loaded = true,
    path = "C:\\Users\\user\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\barbar.nvim",
    url = "https://github.com/romgrk/barbar.nvim"
  },
  ["dashboard-nvim"] = {
    config = { "\27LJ\2\n;\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\14dashboard\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\user\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\dashboard-nvim",
    url = "https://github.com/nvimdev/dashboard-nvim"
  },
  ["dbsession.nvim"] = {
    commands = { "SessionSave", "SessionDelete", "SessionLoad" },
    config = { "\27LJ\2\n;\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\14dbsession\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\user\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\dbsession.nvim",
    url = "https://github.com/glepnir/dbsession.nvim"
  },
  ["fish.vim"] = {
    loaded = true,
    path = "C:\\Users\\user\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\fish.vim",
    url = "https://github.com/nickeb96/fish.vim"
  },
  ["gitsigns.nvim"] = {
    loaded = true,
    path = "C:\\Users\\user\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["goyo.vim"] = {
    loaded = true,
    path = "C:\\Users\\user\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\goyo.vim",
    url = "https://github.com/junegunn/goyo.vim"
  },
  ["i3-vim-syntax"] = {
    loaded = true,
    path = "C:\\Users\\user\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\i3-vim-syntax",
    url = "https://github.com/PotatoesMaster/i3-vim-syntax"
  },
  ["limelight.vim"] = {
    loaded = true,
    path = "C:\\Users\\user\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\limelight.vim",
    url = "https://github.com/junegunn/limelight.vim"
  },
  ["lualine.nvim"] = {
    loaded = true,
    path = "C:\\Users\\user\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["markdown-preview.nvim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\user\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\markdown-preview.nvim",
    url = "https://github.com/iamcco/markdown-preview.nvim"
  },
  neorg = {
    config = { "\27LJ\2\n�\a\0\0\t\0005\0I6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\0023\0005\3\3\0004\4\0\0=\4\4\0035\4\22\0005\5\5\0005\6\t\0005\a\a\0005\b\6\0=\b\b\a=\a\n\6=\6\b\0055\6\r\0005\a\f\0005\b\v\0=\b\b\a=\a\14\6=\6\b\0055\6\20\0005\a\16\0005\b\15\0=\b\17\a5\b\18\0=\b\19\a=\a\21\6=\6\b\5=\5\23\4=\4\24\0034\4\0\0=\4\25\0035\4\29\0005\5\27\0005\6\26\0=\6\28\5=\5\23\4=\4\30\0035\4 \0005\5\31\0=\5\23\4=\4!\0034\4\0\0=\4\"\0034\4\0\0=\4#\0034\4\0\0=\4$\0035\4&\0005\5%\0=\5\23\4=\4'\0034\4\0\0=\4(\0035\4*\0005\5)\0=\5\23\4=\4+\0034\4\0\0=\4,\0035\4.\0005\5-\0=\5\23\4=\4/\0035\0041\0005\0050\0=\5\23\4=\0042\3=\0034\2B\0\2\1K\0\1\0\tload\1\0\0\17core.journal\1\0\0\1\0\2\14workspace\nNotes\rstrategy\tflat\16core.tangle\1\0\0\1\0\1\20report_on_empty\1\17core.summary\25core.export.markdown\1\0\0\1\0\1\15extensions\ball\16core.export\19core.presenter\1\0\0\1\0\1\rzen_mode\rzen-mode\23core.looking-glass\24core.qol.todo_items\17core.qol.toc\27core.esupports.metagen\1\0\0\1\0\2\ttype\tauto\16update_date\2\16core.dirman\1\0\0\15workspaces\1\0\1\22default_workspace\nnotes\1\0\2\tmain\25~\\kDrive2\\Neorg\\main\nnotes\26~\\kDrive2\\Neorg\\notes core.integrations.telescope\19core.concealer\vconfig\1\0\0\ttodo\1\0\0\tdone\1\0\1\ticon\b✓\14cancelled\1\0\0\1\0\1\ticon\b✗\fordered\1\0\0\1\0\0\1\a\0\0\0061\6A\6a\0061\6A\6a\fheading\1\0\0\nicons\1\0\0\1\b\0\0\b◉\b◎\b▶\b○\a»\a­\a°\1\0\3\20init_open_folds\tauto\16icon_preset\nbasic\nfolds\2\18core.defaults\1\0\0\nsetup\nneorg\frequire\0" },
    loaded = true,
    path = "C:\\Users\\user\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\neorg",
    url = "https://github.com/nvim-neorg/neorg"
  },
  ["neorg-telescope"] = {
    loaded = true,
    path = "C:\\Users\\user\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\neorg-telescope",
    url = "https://github.com/nvim-neorg/neorg-telescope"
  },
  nerdtree = {
    loaded = true,
    path = "C:\\Users\\user\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nerdtree",
    url = "https://github.com/scrooloose/nerdtree"
  },
  ["nvim-base16"] = {
    loaded = true,
    path = "C:\\Users\\user\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-base16",
    url = "https://github.com/RRethy/nvim-base16"
  },
  ["nvim-palenight.lua"] = {
    loaded = true,
    path = "C:\\Users\\user\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-palenight.lua",
    url = "https://github.com/kyazdani42/nvim-palenight.lua"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "C:\\Users\\user\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "C:\\Users\\user\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-web-devicons",
    url = "https://github.com/nvim-tree/nvim-web-devicons"
  },
  orgmode = {
    loaded = true,
    path = "C:\\Users\\user\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\orgmode",
    url = "https://github.com/nvim-orgmode/orgmode"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "C:\\Users\\user\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "C:\\Users\\user\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["python-syntax"] = {
    loaded = true,
    path = "C:\\Users\\user\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\python-syntax",
    url = "https://github.com/vim-python/python-syntax"
  },
  ["rose-pine"] = {
    config = { "\27LJ\2\n9\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0\26colorscheme rose-pine\bcmd\bvim\0" },
    loaded = true,
    path = "C:\\Users\\user\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\rose-pine",
    url = "https://github.com/rose-pine/neovim"
  },
  ["sxhkd-vim"] = {
    loaded = true,
    path = "C:\\Users\\user\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\sxhkd-vim",
    url = "https://github.com/kovetskiy/sxhkd-vim"
  },
  ["telekasten.nvim"] = {
    loaded = true,
    path = "C:\\Users\\user\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\telekasten.nvim",
    url = "https://github.com/renerocksai/telekasten.nvim"
  },
  ["telescope-file-browser.nvim"] = {
    loaded = true,
    path = "C:\\Users\\user\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\telescope-file-browser.nvim",
    url = "https://github.com/nvim-telescope/telescope-file-browser.nvim"
  },
  ["telescope-orgmode.nvim"] = {
    loaded = true,
    path = "C:\\Users\\user\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\telescope-orgmode.nvim",
    url = "https://github.com/joaomsa/telescope-orgmode.nvim"
  },
  ["telescope-symbols.nvim"] = {
    loaded = true,
    path = "C:\\Users\\user\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\telescope-symbols.nvim",
    url = "https://github.com/nvim-telescope/telescope-symbols.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "C:\\Users\\user\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["vim-css-color"] = {
    loaded = true,
    path = "C:\\Users\\user\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-css-color",
    url = "https://github.com/ap/vim-css-color"
  },
  ["vim-devicons"] = {
    loaded = true,
    path = "C:\\Users\\user\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-devicons",
    url = "https://github.com/ryanoasis/vim-devicons"
  },
  ["vim-emoji"] = {
    loaded = true,
    path = "C:\\Users\\user\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-emoji",
    url = "https://github.com/junegunn/vim-emoji"
  },
  ["vim-json"] = {
    loaded = true,
    path = "C:\\Users\\user\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-json",
    url = "https://github.com/elzr/vim-json"
  },
  ["vim-markdown-toc"] = {
    loaded = true,
    path = "C:\\Users\\user\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-markdown-toc",
    url = "https://github.com/mzlogin/vim-markdown-toc"
  },
  ["vim-nerdtree-syntax-highlight"] = {
    loaded = true,
    path = "C:\\Users\\user\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-nerdtree-syntax-highlight",
    url = "https://github.com/tiagofumo/vim-nerdtree-syntax-highlight"
  },
  ["vim-rainbow"] = {
    loaded = true,
    path = "C:\\Users\\user\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-rainbow",
    url = "https://github.com/frazrepo/vim-rainbow"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "C:\\Users\\user\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-surround",
    url = "https://github.com/tpope/vim-surround"
  },
  vimagit = {
    loaded = true,
    path = "C:\\Users\\user\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vimagit",
    url = "https://github.com/jreybert/vimagit"
  },
  ["which-key.nvim"] = {
    loaded = true,
    path = "C:\\Users\\user\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\which-key.nvim",
    url = "https://github.com/folke/which-key.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Setup for: markdown-preview.nvim
time([[Setup for markdown-preview.nvim]], true)
try_loadstring("\27LJ\2\n=\0\0\2\0\4\0\0056\0\0\0009\0\1\0005\1\3\0=\1\2\0K\0\1\0\1\2\0\0\rmarkdown\19mkdp_filetypes\6g\bvim\0", "setup", "markdown-preview.nvim")
time([[Setup for markdown-preview.nvim]], false)
-- Config for: neorg
time([[Config for neorg]], true)
try_loadstring("\27LJ\2\n�\a\0\0\t\0005\0I6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\0023\0005\3\3\0004\4\0\0=\4\4\0035\4\22\0005\5\5\0005\6\t\0005\a\a\0005\b\6\0=\b\b\a=\a\n\6=\6\b\0055\6\r\0005\a\f\0005\b\v\0=\b\b\a=\a\14\6=\6\b\0055\6\20\0005\a\16\0005\b\15\0=\b\17\a5\b\18\0=\b\19\a=\a\21\6=\6\b\5=\5\23\4=\4\24\0034\4\0\0=\4\25\0035\4\29\0005\5\27\0005\6\26\0=\6\28\5=\5\23\4=\4\30\0035\4 \0005\5\31\0=\5\23\4=\4!\0034\4\0\0=\4\"\0034\4\0\0=\4#\0034\4\0\0=\4$\0035\4&\0005\5%\0=\5\23\4=\4'\0034\4\0\0=\4(\0035\4*\0005\5)\0=\5\23\4=\4+\0034\4\0\0=\4,\0035\4.\0005\5-\0=\5\23\4=\4/\0035\0041\0005\0050\0=\5\23\4=\0042\3=\0034\2B\0\2\1K\0\1\0\tload\1\0\0\17core.journal\1\0\0\1\0\2\14workspace\nNotes\rstrategy\tflat\16core.tangle\1\0\0\1\0\1\20report_on_empty\1\17core.summary\25core.export.markdown\1\0\0\1\0\1\15extensions\ball\16core.export\19core.presenter\1\0\0\1\0\1\rzen_mode\rzen-mode\23core.looking-glass\24core.qol.todo_items\17core.qol.toc\27core.esupports.metagen\1\0\0\1\0\2\ttype\tauto\16update_date\2\16core.dirman\1\0\0\15workspaces\1\0\1\22default_workspace\nnotes\1\0\2\tmain\25~\\kDrive2\\Neorg\\main\nnotes\26~\\kDrive2\\Neorg\\notes core.integrations.telescope\19core.concealer\vconfig\1\0\0\ttodo\1\0\0\tdone\1\0\1\ticon\b✓\14cancelled\1\0\0\1\0\1\ticon\b✗\fordered\1\0\0\1\0\0\1\a\0\0\0061\6A\6a\0061\6A\6a\fheading\1\0\0\nicons\1\0\0\1\b\0\0\b◉\b◎\b▶\b○\a»\a­\a°\1\0\3\20init_open_folds\tauto\16icon_preset\nbasic\nfolds\2\18core.defaults\1\0\0\nsetup\nneorg\frequire\0", "config", "neorg")
time([[Config for neorg]], false)
-- Config for: rose-pine
time([[Config for rose-pine]], true)
try_loadstring("\27LJ\2\n9\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0\26colorscheme rose-pine\bcmd\bvim\0", "config", "rose-pine")
time([[Config for rose-pine]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
pcall(vim.api.nvim_create_user_command, 'SessionSave', function(cmdargs)
          require('packer.load')({'dbsession.nvim'}, { cmd = 'SessionSave', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'dbsession.nvim'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('SessionSave ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'SessionDelete', function(cmdargs)
          require('packer.load')({'dbsession.nvim'}, { cmd = 'SessionDelete', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'dbsession.nvim'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('SessionDelete ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'SessionLoad', function(cmdargs)
          require('packer.load')({'dbsession.nvim'}, { cmd = 'SessionLoad', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'dbsession.nvim'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('SessionLoad ', 'cmdline')
      end})
time([[Defining lazy-load commands]], false)

vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time([[Defining lazy-load filetype autocommands]], true)
vim.cmd [[au FileType markdown ++once lua require("packer.load")({'markdown-preview.nvim'}, { ft = "markdown" }, _G.packer_plugins)]]
time([[Defining lazy-load filetype autocommands]], false)
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au VimEnter * ++once lua require("packer.load")({'dashboard-nvim'}, { event = "VimEnter *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
vim.cmd("augroup END")

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end

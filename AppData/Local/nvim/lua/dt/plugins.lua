-------------------------------------------------
-- DT'S NEOVIM CONFIGURATION
-- Neovim website: https://neovim.io/
-- DT's dotfiles: https://gitlab.com/dwt1/dotfiles
-------------------------------------------------

local status, packer = pcall(require, "packer")
if not status then
  print("Packer is not installed")
  return
end

-- Reloads Neovim after whenever you save plugins.lua
vim.cmd([[
augroup packer_user_config
autocmd!
autocmd BufWritePost plugins.lua source <afile> | PackerSync
augroup END
]])

packer.startup(function(use)
  -- Packer can manage itself
  use("wbthomason/packer.nvim")

  use({'glepnir/dbsession.nvim', cmd = { 'SessionSave', 'SessionDelete', 'SessionLoad'},
  config = function() require('dbsession').setup({}) end
})

-- Dashboard is a n:qice start screen for nvim
use {
  'nvimdev/dashboard-nvim',
  event = 'VimEnter',
  config = function()
    require('dashboard').setup {
      -- config

    }
  end,
  requires = {'nvim-tree/nvim-web-devicons'}
}


--	use({"nvimdev/dashboard-nvim",
--      event = 'VimEnter'})

--    use({'glepnir/dbsession.nvim', cmd = {'SessionSave', 'SessionLoad'},
--    config = function() require('dbsession').setup({}) end})
--
--      event = 'VimEnter'})

--    use({'glepnir/dbsession.nvim', cmd = {'SessionSave', 'SessionLoad'},
--    config = function() require('dbsession').setup({}) end})
--
use({
  'rose-pine/neovim',
  as = 'rose-pine',
  config = function()
    vim.cmd('colorscheme rose-pine')
  end
})

-- Telescope
use({
  "nvim-telescope/telescope.nvim",
  tag = "0.1.5",
  requires = { { "nvim-lua/plenary.nvim" } },
})
use("nvim-telescope/telescope-file-browser.nvim")
use("joaomsa/telescope-orgmode.nvim")

use("nvim-treesitter/nvim-treesitter") -- Treesitter Syntax Highlighting

use ("nvim-tree/nvim-web-devicons")
use {
  'renerocksai/telekasten.nvim',
  requires = {'nvim-telescope/telescope.nvim'}
}

use("nvim-telescope/telescope-symbols.nvim")

-- use({
  --     "iamcco/markdown-preview.nvim",
  --     run = function() vim.fn["mkdp#util#install"]() end,
  -- })

  use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install", setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" }, })

  use("mzlogin/vim-markdown-toc")
  -- Productivity
  -- use("vimwiki/vimwiki")
  use("jreybert/vimagit")
  use("nvim-orgmode/orgmode")
  --  use {'akinsho/org-bullets.nvim', config = function()
    --    require('org-bullets').setup()
    --    require('telescope').load_extension('orgmode')
    --  end}
    use("folke/which-key.nvim") -- Which Key

    -- Lua line
    use {'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }

  -- File management --
  --use("vifm/vifm.vim")   
  use("scrooloose/nerdtree")
  use("tiagofumo/vim-nerdtree-syntax-highlight")
  use("ryanoasis/vim-devicons")

  -- Tim Pope Plugins --
  use("tpope/vim-surround")

  -- Syntax Highlighting and Colors --
  use("PotatoesMaster/i3-vim-syntax")
  use("kovetskiy/sxhkd-vim")
  use("vim-python/python-syntax")
  use("ap/vim-css-color")
  use("nickeb96/fish.vim")

  -- Junegunn Choi Plugins --
  use("junegunn/goyo.vim")
  use("junegunn/limelight.vim")
  use("junegunn/vim-emoji")
  use("elzr/vim-json")
  -- Colorschemes --
  use("RRethy/nvim-base16")
  use("kyazdani42/nvim-palenight.lua")

  use 'lewis6991/gitsigns.nvim' -- OPTIONAL: for git status
  use 'romgrk/barbar.nvim'

  -- Other stuff --
  use("frazrepo/vim-rainbow")

  use ({
    "nvim-neorg/neorg",
    run = ":Neorg sync-parsers", -- This is the important bit!
    config = function()
      require('neorg').setup {
        load = {
          ["core.defaults"] = {}, -- Loads default behaviour
          ["core.concealer"] = {
            config ={
              folds = true,
              icon_preset = "basic",     -- basic, diamond, varied
              init_open_folds = "auto",
              icons = { heading = { icons = {"◉", "◎","▶","○","»","­","°"}, }, },
              icons = { ordered = { icons = { "1", "A", "a", "1", "A", "a" }, }, },
              icons = { todo = { 
                cancelled = { icon = "✗",}, 
                done = {icon = "✓",}, 
                --      on_hold = {},
                --            pending = {"□"},
                --          recurring = {"◎"},
                --      uncertain = {"?"},
                --      undone = {"▭"},
                --        urgent = {"!"},
              },
            },
            --
          },
        },
        -- Adds pretty icons to your documents
        ["core.integrations.telescope"] = {
        },
        ["core.dirman"] = { -- Manages Neorg workspaces
        config = {
          workspaces = {
            notes = "~\\kDrive2\\Neorg\\notes",
            main =  "~\\kDrive2\\Neorg\\main",
          },
          default_workspace = "notes",
        }, 
      }, 
      ["core.esupports.metagen"] = { config = { type = "auto", update_date = true } },
      ["core.qol.toc"] = {},
      ["core.qol.todo_items"] = {},
      ["core.looking-glass"] = {},
      ["core.presenter"] = { config = { zen_mode = "zen-mode" } },
      ["core.export"] = {},
      ["core.export.markdown"] = { config = { extensions = "all" } },
      ["core.summary"] = {},
      ["core.tangle"] = { config = { report_on_empty = false } },
      --      ["core.ui.calendar"] = {},
      ["core.journal"] = {
        config = {
          strategy = "flat",
          workspace = "Notes",
        },
      },
    }, 
  }
end, 
requires = { " nvim-lua/plenary.nvim", "nvim-neorg/neorg-telescope"},
})

if packer_bootstrap then
  packer.sync()
end
end)



vim.g.vimwiki_list = {
  { path = '/media/sf_kDrive2/Wiki', syntax = 'markdown', ext = '.md' }
}

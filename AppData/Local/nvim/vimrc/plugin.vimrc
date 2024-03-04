"'https://github.com/ryanoasis/nerd-fonts#font-installation' *******************************************************************************
"* PLUG
"*******************************************************************************
call plug#begin()

" Surround
Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw)

" NerdTree
Plug 'https://github.com/preservim/nerdtree' " NerdTree

"Airline
Plug 'https://github.com/vim-airline/vim-airline' " Status bar

" Commentary
Plug 'https://github.com/shoukoo/commentary.nvim'

" Color schemes
Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme

" Developer Icons
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'https://github.com/kyazdani42/nvim-web-devicons'

" Tag bar
Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation

" Multiple cursor
Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors

" fzf
Plug 'https://github.com/junegunn/fzf', {'do':{->fzf#install()}}
Plug 'https://github.com/junegunn/fzf.vim'
Plug 'https://github.com/chengzeyi/fzf-preview.vim'

" Rainbow
Plug 'https://github.com/frazrepo/vim-rainbow'

" Auto pairs
Plug 'https://github.com/jiangmiao/auto-pairs'

" vim move
Plug  'https://github.com/matze/vim-move'

" vim addon mw utils
Plug 'https://github.com/MarcWeber/vim-addon-mw-utils'

" tlib
Plug 'https://github.com/tomtom/tlib_vim'

" snipmate
Plug 'https://github.com/garbas/vim-snipmate'
Plug 'https://github.com/honza/vim-snippets'
Plug 'https://github.com/SirVer/ultisnips'


" vim beatify
Plug 'https://github.com/zeekay/vim-beautify'

" vim prettier
 Plug 'https://github.com/prettier/vim-prettier', {
                 \ 'do': 'yarn install --frozen-lockfile --production',
                 \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'svelte', 'yaml', 'html','c'] }
 
" bookmarks
Plug 'MattesGroeger/vim-bookmarks'

" neoformat
Plug 'https://github.com/sbdchd/neoformat'

" tabular
Plug 'https://github.com/godlygeek/tabular'

" markdown
"Plug 'https://github.com/preservim/vim-markdown'

" plenary
Plug 'https://github.com/nvim-lua/plenary.nvim'

" telescope
Plug 'https://github.com/nvim-telescope/telescope.nvim'
"Plug 'https://github.com/nvim-telescope/telescope.nvim', { 'tag': '0.1.4' }
Plug 'https://github.com/nvim-lua/plenary.nvim'
Plug  'https://github.com/nvim-telescope/telescope-project.nvim'

" fuggitive
Plug 'https://github.com/tpope/vim-fugitive'

"indentline
Plug 'https://github.com/Yggdroot/indentLine'

" easy motion
Plug 'https://github.com/easymotion/vim-easymotion'

" any jump
Plug 'https://github.com/pechorin/any-jump.vim'

" easy align
Plug 'junegunn/vim-easy-align'

" vim repeat
Plug 'https://github.com/tpope/vim-repeat'

" capslock
Plug 'https://github.com/tpope/vim-capslock'   " press <C-G>c

" gui font resize
Plug 'https://github.com/ktunprasert/gui-font-resize.nvim'

" which key
Plug 'http://github.com/liuchengxu/vim-which-key'

" tree sitter
Plug 'https://github.com/nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" sneak
Plug 'https://github.com/justinmk/vim-sneak'

" Limelight
Plug 'https://github.com/junegunn/limelight.vim'

"JSON 
Plug 'https://github.com/elzr/vim-json'

" Markdown
Plug 'https://github.com/plasticboy/vim-markdown'

" Pandoc
Plug 'https://github.com/vim-pandoc/vim-pandoc'
Plug 'https://github.com/vim-pandoc/vim-pandoc-syntax' 

" Markdown preview
Plug 'https://github.com/iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }}
Plug 'https://github.com/kurocode25/mdforvim'
""""""""
"Plug 'https://github.com/neoclide/coc.nvim',{'branch':'release'}  " Auto Completion
"Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
"Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
"Plug 'dracula/vim' ", { 'name': 'dracula' }
"Plug 'michal-h21/vim-zettel'
"Plug 'https://github.com/shime/vim-livedown'
"Plug 'https://github.com/pseewald/vim-anyfold'
"Plug 'https://github.com/michaeljsmith/vim-indent-object'
"Plug 'https://github.com/vimwiki/vimwiki'
"Plug 'https://github.com/vim-scripts/a.vim'
"Plug 'https://github.com/sharkdp/fd'
"Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
"Plug 'https://github.com/tree-sitter/tree-sitter-c'
"Plug 'dense-analysis/ale'
"Plug 'https://github.com/mhinz/vim-startify'
"Plug 'https://github.com/mattn/calendar-vim'
"Plug 'https://github.com/tpope/vim-scriptease'
"Plug 'https://github.com/sakshamgupta05/vim-todo-highlight'
"Plug 'https://github.com/airblade/vim-gitgutter'
"Plug 'https://github.com/chrisbra/matchit'
"Plug 'https://github.com/tpope/vim-sensible'
"Plug 'https://github.com/ervandew/supertab'
"Plug 'https://github.com/folke/tokyonight.nvim'
"Plug 'nvim-lua/plenary.nvim' " don't forget to add this one if you don't have it yet!
"Plug 'ThePrimeagen/harpoon'
"Plug 'ThePrimeagen/vim-be-good'
""""""""""
call plug#end()


"*******************************************************************************
"* General configuration
"*******************************************************************************

"set ignorecase              " case insensitive
" set cc=80                  " set an 80 column border for good coding
set encoding=UTF-8
set clipboard+=unnamedplus   " using system clipboard
set number relativenumber
set expandtab
set autoindent
set tabstop=2
set shiftwidth=2
set smarttab
set softtabstop=2
set mouse=v                 " middle-click paste with
set mouse=a                 " enable mouse click
set noswapfile
set scrolloff =8
set backspace=indent,eol,start
set autoindent
set expandtab
set wm=10  
set linebreak
set spelllang=it
set autoread
set nohlsearch
set smartcase
set incsearch
set termguicolors
" setglobal commentstring=#%s
" set commentstring="//\ %s"
" autocmd FileType cpp setlocal commentstring=// %s
set wildmode=full
set filetype=c  
set cindent
set autoread
" set listchars=eol:¬ ",tab:>-,trail:~,extends:>,precedes:<
" set list
" set listchars=eol:¬,tab:»,trail:¸,extends:»,precedes:«
" set list
" Attempt to determine the type of a file based on its name and possibly its
" contents. Use this to allow intelligent auto-indenting for each filetype,
" and for plugins that are filetype specific.
if has('filetype')
  filetype indent plugin on
endif


" Enable syntax highlighting
if has('syntax')
  syntax on
endif



function! SetSpell()
  if &spell == "nospell"
    set spell
    echo "Spell option enable"
  else
    set nospell
    echo "Spell option disable"
  endif
endfunction


 let g:clipboard = {
      \   'name': 'myClipboard',
      \   'copy': {
      \      '+': {lines, regtype -> extend(g:, {'foo': [lines, regtype]}) },
      \      '*': {lines, regtype -> extend(g:, {'foo': [lines, regtype]}) },
      \    },
      \   'paste': {
      \      '+': {-> get(g:, 'foo', [])},
      \      '*': {-> get(g:, 'foo', [])},
      \   },
      \ }


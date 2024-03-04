"*******************************************************************************
"* WhichKey
"*******************************************************************************
"description
" Define prefix dictionary
let g:which_key_map =  {}
nnoremap <silent> <leader>      :<c-u>WhichKey '<Space>'<CR>
nnoremap <silent> <localleader> :<c-u>WhichKey  ','<CR>
" Second level dictionaries:
" 'name' is a special field. It will define the name of the group, e.g., leader-f is the "+file" group.
" Unnamed groups will show a default empty string.

" =======================================================
" Create menus based on existing mappings
" =======================================================
" You can pass a descriptive text to an existing mapping.

let g:which_key_map.f = { 'name' : '+file' }

call which_key#register('<Space>', "g:which_key_map", 'n')
call which_key#register('<Space>', "g:which_key_map_visual", 'v')
" Define prefix dictionary
let g:which_key_map =  {}

" Second level dictionaries:
" 'name' is a special field. It will define the name of the group, e.g., leader-f is the "+file" group.
" Unnamed groups will show a default empty string.

" =======================================================
" Create menus based on existing mappings
" =======================================================
" You can pass a descriptive text to an existing mapping.

let g:which_key_map.f = { 'name' : '+file' }

nnoremap <silent> <leader>fs :update<CR>
let g:which_key_map.f.s = 'save-file'

nnoremap <silent> <leader>fd :e $MYVIMRC<CR>
let g:which_key_map.f.d = 'open-vimrc'

nnoremap <silent> <leader>oq  :copen<CR>
nnoremap <silent> <leader>ol  :lopen<CR>
let g:which_key_map.o = {
            \ 'name' : '+open',
            \ 'q' : 'open-quickfix'    ,
            \ 'l' : 'open-locationlist',
            \ }
 

" =======================================================
" Create menus not based on existing mappings:
" =======================================================
" Provide commands(ex-command, <Plug>/<C-W>/<C-d> mapping, etc.)
" and descriptions for the existing mappings.
"
" Note:
" Some complicated ex-cmd may not work as expected since they'll be
" feed into `feedkeys()`, in which case you have to define a decicated
" Command or function wrapper to make it work with vim-which-key.
" Ref issue #126, #133 etc.

let g:which_key_map.b = {
            \ 'name' : '+buffer' ,
            \ '1' : ['b1'        , 'buffer 1']        ,
            \ '2' : ['b2'        , 'buffer 2']        ,
            \ 'd' : ['bd'        , 'delete-buffer']   ,
            \ 'f' : ['bfirst'    , 'first-buffer']    ,
            \ 'h' : ['Startify'  , 'home-buffer']     ,
            \ 'l' : ['blast'     , 'last-buffer']     ,
            \ 'n' : ['bnext'     , 'next-buffer']     ,
            \ 'p' : ['bprevious' , 'previous-buffer'] ,
            \ '?' : ['Buffers'   , 'fzf-buffer']      ,
            \ 'r' : ['registers' , 'register']        ,
            \ 'v' : ['buffers'    , 'vim-buffer']      ,
            \ }
let g:which_key_map.w = {
            \ 'name' : '+windows' ,
            \ 'o' : ['<C-W>w'     , 'other-window']          ,
            \ 'd' : ['<C-W>c'     , 'delete-window']         ,
            \ '-' : ['<C-W>s'     , 'split-window-below']    ,
            \ '|' : ['<C-W>v'     , 'split-window-right']    ,
            \ '2' : ['<C-W>v'     , 'layout-double-columns'] ,
            \ 'h' : ['<C-W>h'     , 'window-left']           ,
            \ 'j' : ['<C-W>j'     , 'window-below']          ,
            \ 'l' : ['<C-W>l'     , 'window-right']          ,
            \ 'k' : ['<C-W>k'     , 'window-up']             ,
            \ 'H' : ['<C-W>5<'    , 'expand-window-left']    ,
            \ 'J' : [':resize +5'  , 'expand-window-below']   ,
            \ 'L' : ['<C-W>5>'    , 'expand-window-right']   ,
            \ 'K' : [':resize -5'  , 'expand-window-up']      ,
            \ '=' : ['<C-W>='     , 'balance-window']        ,
            \ 's' : ['<C-W>s'     , 'split-window-below']    ,
            \ 'v' : ['<C-W>v'     , 'split-window-below']    ,
            \ '?' : ['Windows'    , 'fzf-window']            ,
            \ }
let g:which_key_map.s = {
            \ 'name' : 'searh fzf',
            \ 'h' :[':History<CR>' , 'History'],
            \ 'z' : [':FZF -m<CR>'  ,'FZF'] ,
            \ 'l' :[':Line<CR>',     'Line'],
            \ 'f': [':Files<CR>','Files'],
            \ 'r' : [':Rg<CR>','RIPGREP'],
            \ }
let g:which_key_map.c = {
            \ 'name' : '+clipboard',
            \ 'y' :['\"+y<CR>', 'yerd'],
            \ 'p' :['\"+gP<CR>','paste'],
            \ 'x' :['\"+x<CR>', 'cut'],
            \ }

let g:which_key_map.m = {
            \ 'name' : '+Bookmarks',
            \ 'i' :[':BookmarkAnnotate', 'annotate'],
            \ 'm' :[':ToggleBookmark', 'add/move bookmark'],
            \ 'a' :[':BookmarkShowAll','show all'],
            \ 'j' :[':BookmarkNext', 'next bookmark'],
            \ 'k' :[':BookmarkPrev', 'prev bookmark'],
            \ 'c' :[':BookmarkClear', 'clear bookmark'],
            \ 'x' :[':BookmarkClearAll', 'clear all bookmark'],
            \ }
let g:which_key_map.z = {
            \ 'name' : '+fold' ,
            \ 'o' : ['zo'        , 'open fold']        ,
            \ 'f' : ['zf'        , 'crate fold']        ,
            \ 'a' : ['za'        , 'toggle fold']        ,
            \ 'c' : ['zc'        , 'close fold']        ,
            \ 'M' : ['zM'        , 'close all fold']        ,
            \ 'R' : ['zR'        , 'open all fold']        ,
            \ }

let g:which_key_map.h = {
            \ 'name' : '+html' ,
            \ 'k' : [':LivedownKill', 'stop livedown server'],
            \ 'p' :[':LivedownPreview', 'preview markdown file'],
            \ 't' :[':LivedownToggle','lunch/kill livedown server'],
            \ }

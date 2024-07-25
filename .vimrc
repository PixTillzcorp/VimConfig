" ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~
"         Reload vim-plug if not present         
" ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

"################################################

" ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~
"            Plugin loading starts here          
" ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~

call plug#begin()

"(display info for each window)
Plug 'bignimbus/you-are-here.vim'

"(high contrast theme c: )
Plug 'bignimbus/pop-punk.vim'

"(42 header plugin)
Plug '42Paris/42header'

call plug#end()

"=================[you-are-here]=================
nnoremap <silent> <leader>here :call you_are_here#Toggle()<CR>
nnoremap <silent> <leader>here :call you_are_here#ToggleFor(2500)<CR>
nnoremap <silent> <leader>bye :call you_are_here#Close()<CR>
nnoremap <silent> <leader>upd :call you_are_here#Update()<CR>

"================[pop-punk theme]================
set background=dark
highlight clear
if exists("syntax_on")
    syntax reset
endif
colorscheme pop-punk

"===============[42 header config]===============
let g:user42 = 'heinfalt'
let g:mail42 = 'heinfalt@student.42.fr'

"################################################

" ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~
"                  Basic Setup
" ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~

packadd! matchit

set nocompatible
set history=1000
set showcmd" display current cmd 
set wildmenu            " multiple choices TAB
set display=truncate    " trunc eol with '@@@'
set incsearch           " show match during typing
set nowrap
set sidescroll=10
set whichwrap=b,s,<,>,[,]
set list
set listchars=tab:^_,trail:_,extends:>,precedes:<,space:·

filetype plugin indent on

autocmd BufReadPost *
\ if line("'\"") >= 1 && line("'\"") <= line("$") && &ft !~# 'commit'
\ |   exe "normal! g`\""
\ | endif

if has('mouse')
  set mouse=a
endif

if &t_Co > 2 || has("gui_running")
  set hlsearch
endif

set number
set tabstop=4 shiftwidth=4 expandtab
set cursorline
set ruler

"################################################

" ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~
"            Highlight Ruler Column
" ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~

set colorcolumn=81
hi ColorColumn ctermbg=white

"################################################

" ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~
"                Personal remap
" ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~

" add last highlight remover with remap later

"################################################
